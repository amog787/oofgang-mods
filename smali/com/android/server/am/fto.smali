.class public final Lcom/android/server/am/fto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/fto$you;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "OnePlusTelephonySceneDetect"

.field private static final cno:Ljava/lang/String; = "persist.sys.opscene.debug"

.field private static igw:Lcom/android/server/am/fto;

.field private static kth:Z

.field public static final ssp:Z


# instance fields
.field private rtg:Z

.field private sis:Ljava/lang/reflect/Method;

.field private tsu:Ljava/lang/Object;

.field private you:Landroid/content/Context;

.field private zta:Lcom/android/server/am/fto$you;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/fto;->kth:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/fto;->igw:Lcom/android/server/am/fto;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/fto$you;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/fto$you;-><init>(Lcom/android/server/am/fto;Lcom/android/server/am/fto$zta;)V

    iput-object v0, p0, Lcom/android/server/am/fto;->zta:Lcom/android/server/am/fto$you;

    iput-object v1, p0, Lcom/android/server/am/fto;->you:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/fto;->rtg:Z

    :try_start_0
    const-string v0, "Start service"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/fto;->you:Landroid/content/Context;

    const-string p1, "persist.sys.opscene.debug"

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/fto;->kth:Z

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/fto;->zta:Lcom/android/server/am/fto$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->obl:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/fto;->zta:Lcom/android/server/am/fto$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/fto;->zta:Lcom/android/server/am/fto$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->tsu:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/fto;->zta:Lcom/android/server/am/fto$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/fto;->zta:Lcom/android/server/am/fto$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init failed:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private bio()Ljava/lang/Object;
    .locals 8

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIExtTelephony() exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private bvj(Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFrontPkgChangedToTelephony: pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "frontpkg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setFrontPkgChanged"

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyfrontPkgChangedToTelephony method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/fto;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/fto;->ugm(IZ)V

    return-void
.end method

.method protected static dma(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OnePlusTelephonySceneDetect"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final gck(Landroid/content/Context;)Lcom/android/server/am/fto;
    .locals 1

    sget-object v0, Lcom/android/server/am/fto;->igw:Lcom/android/server/am/fto;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/fto;

    invoke-direct {v0, p0}, Lcom/android/server/am/fto;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/fto;->igw:Lcom/android/server/am/fto;

    :cond_0
    sget-object p0, Lcom/android/server/am/fto;->igw:Lcom/android/server/am/fto;

    return-object p0
.end method

.method private gwm(ILjava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTrafficHighChangedToTelephony: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "packagename"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "download"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setTrafficHighChanged"

    aput-object v3, p3, v2

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyTrafficHighChangedToTelephony method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private ibl(ILjava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTrafficChangedToTelephony: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "packagename"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "download"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setTrafficChanged"

    aput-object v3, p3, v2

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyTrafficChangedToTelephony method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static final igw()Lcom/android/server/am/fto;
    .locals 1

    sget-object v0, Lcom/android/server/am/fto;->igw:Lcom/android/server/am/fto;

    return-object v0
.end method

.method static synthetic kth(Lcom/android/server/am/fto;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/fto;->oif(IZ)V

    return-void
.end method

.method private oif(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraChangedToTelephony: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "camerastate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setCameraChanged"

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyCameraChangedToTelephony method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private qbh(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAudioChangedToTelephony: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "audiostate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setAudioChanged"

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyAudioChangedToTelephony method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/fto;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/fto;->rtg:Z

    return p1
.end method

.method static synthetic sis(Lcom/android/server/am/fto;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/fto;->gwm(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/fto;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/fto;->qbh(IZ)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/fto;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/fto;->rtg:Z

    return p0
.end method

.method private ugm(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoChangedToTelephony: uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",using = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "videostate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "setVideoChanged"

    aput-object v4, v2, v3

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyVideoChangedToTelephony method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/fto;->wtn()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/fto;->bio()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/fto;->tsu:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private wtn()Ljava/lang/reflect/Method;
    .locals 5

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-eqz v0, :cond_0

    const-string v0, "getMethod()"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    const-string v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "generalSetter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/fto;->sis:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMethod() exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/fto;->ywr(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/am/fto;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/fto;->ibl(ILjava/lang/String;Z)V

    return-void
.end method

.method protected static ywr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OnePlusTelephonySceneDetect"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/fto;->kth:Z

    return v0
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    if-eq p2, p5, :cond_1

    sget-boolean p0, Lcom/android/server/am/fto;->ssp:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/android/server/am/fto;->kth:Z

    if-eqz p0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "event frontPackageChanged packageName:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |luid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
