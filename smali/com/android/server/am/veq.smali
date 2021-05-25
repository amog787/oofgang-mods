.class public final Lcom/android/server/am/veq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/veq$you;,
        Lcom/android/server/am/veq$sis;
    }
.end annotation


# static fields
.field public static final gwm:Z

.field private static obl:Lcom/android/server/am/veq; = null

.field private static final ugm:Ljava/lang/String; = "persist.sys.opscene.debug"

.field private static vdb:Z = false

.field private static final zgw:Ljava/lang/String; = "OnePlusTelephonySceneDetect"


# instance fields
.field private bio:Ljava/lang/reflect/Method;

.field private bvj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cno:Landroid/media/AudioManager;

.field private dma:Ljava/lang/String;

.field private gck:Ljava/lang/String;

.field private ibl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private igw:Ljava/lang/Object;

.field private kth:Landroid/content/Context;

.field private oif:Z

.field private qbh:Z

.field private rtg:Lcom/android/server/am/veq$sis;

.field private final sis:Ljava/lang/Object;

.field private ssp:Lcom/android/server/am/veq$you;

.field private final tsu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private wtn:Ljava/lang/String;

.field private final you:Ljava/lang/Object;

.field private ywr:Z

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/veq;->obl:Lcom/android/server/am/veq;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/veq;->zta:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/veq;->you:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/veq;->sis:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/veq;->tsu:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/am/veq$you;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/veq$you;-><init>(Lcom/android/server/am/veq;Lcom/android/server/am/veq$zta;)V

    iput-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    iput-object v1, p0, Lcom/android/server/am/veq;->kth:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/veq;->wtn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/veq;->gck:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/veq;->dma:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/veq;->ywr:Z

    iput-boolean v0, p0, Lcom/android/server/am/veq;->qbh:Z

    iput-boolean v0, p0, Lcom/android/server/am/veq;->oif:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/veq;->ibl:Ljava/util/List;

    :try_start_0
    const-string v0, "Start service"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/veq;->kth:Landroid/content/Context;

    const-string p1, "persist.sys.opscene.debug"

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/veq;->vdb:Z

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->obl:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->tsu:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/veq;->ssp:Lcom/android/server/am/veq$you;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->vdb()V

    invoke-direct {p0}, Lcom/android/server/am/veq;->zgw()V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ugm()V

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "OnePlusTelephonySceneDetect"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/veq$sis;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/veq$sis;-><init>(Lcom/android/server/am/veq;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/veq;->rtg:Lcom/android/server/am/veq$sis;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->kth(Lcom/android/server/OnePlusUtil$zta$zta;)V
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

    invoke-static {p0}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNeworkCallLocked  isNetworkCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/veq;->qbh:Z

    invoke-direct {p0, p1}, Lcom/android/server/am/veq;->bud(Z)V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/veq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/veq;->ywr:Z

    return p1
.end method

.method private bud(Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNetworkCallStateChanged networkCallStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "networkCallStatus"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setNetworkCallStateChanged"

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyNetworkCallStateChanged method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public static final bvj()Lcom/android/server/am/veq;
    .locals 1

    sget-object v0, Lcom/android/server/am/veq;->obl:Lcom/android/server/am/veq;

    return-object v0
.end method

.method private c(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    iget-object p1, p0, Lcom/android/server/am/veq;->sis:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p4, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/veq;->ibl:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-boolean p2, Lcom/android/server/am/veq;->gwm:Z

    if-nez p2, :cond_0

    sget-boolean p2, Lcom/android/server/am/veq;->vdb:Z

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "updateProcessStateChanged pkg: "

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p5, p6, p4}, Lcom/android/server/am/veq;->les(ZILjava/lang/String;)V

    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cgv(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

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

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "camerastate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {p2}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private synthetic cjf(Landroid/media/AudioRecordingConfiguration;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/veq;->gck:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/android/server/am/veq;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/veq;->vdw(ILjava/lang/String;Z)V

    return-void
.end method

.method private d(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVideoRecordLocked isVideoRecordOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/veq;->oif:Z

    invoke-direct {p0, p1}, Lcom/android/server/am/veq;->ivd(Z)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/veq;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/veq;->oxb()Z

    move-result p0

    return p0
.end method

.method protected static fto(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OnePlusTelephonySceneDetect"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic gck(Lcom/android/server/am/veq;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/veq;->cgv(IZ)V

    return-void
.end method

.method public static final gwm(Landroid/content/Context;)Lcom/android/server/am/veq;
    .locals 1

    sget-object v0, Lcom/android/server/am/veq;->obl:Lcom/android/server/am/veq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/veq;

    invoke-direct {v0, p0}, Lcom/android/server/am/veq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/veq;->obl:Lcom/android/server/am/veq;

    :cond_0
    sget-object p0, Lcom/android/server/am/veq;->obl:Lcom/android/server/am/veq;

    return-object p0
.end method

.method private ibl()Ljava/lang/reflect/Method;
    .locals 5

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-eqz v0, :cond_0

    const-string v0, "getMethod()"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

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

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;
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

    invoke-static {v0}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/am/veq;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/veq;->veq(IZ)V

    return-void
.end method

.method private synthetic ire(Landroid/media/AudioRecordingConfiguration;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/veq;->wtn:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private irq(ILjava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

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

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

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

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {p2}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private ivd(Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoRecordStateChanged videoRecordStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "videoRecordStatus"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "setVideoRecordStateChanged"

    aput-object v5, v3, v4

    aput-object v0, v3, v1

    invoke-virtual {p1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifyVideoRecordStateChanged method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/veq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/veq;->ywr:Z

    return p0
.end method

.method private les(ZILjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySpecifyProcessStateChanged isProcessStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " killReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isProcessStart"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "killReason"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "procName"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "setSpecifyProcessStateChanged"

    aput-object v3, p3, v2

    aput-object v0, p3, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const-string p1, "notifySpecifyProcessStateChanged method or iExtTelephony is null, return"

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {p2}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method protected static lqr(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OnePlusTelephonySceneDetect"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private obl(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/wtn;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/h;->ssp:Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private oif()Ljava/lang/Object;
    .locals 8

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

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

    iput-object v1, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;
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

    invoke-static {v1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private oxb()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/veq;->dma:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "SCREEN OFF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private qbh(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/veq;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/veq;->cno:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/veq;->kth:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/veq;->cno:Landroid/media/AudioManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/veq;->gck:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/am/tsu;

    invoke-direct {v1, p0}, Lcom/android/server/am/tsu;-><init>(Lcom/android/server/am/veq;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    const/4 p1, 0x1

    move v2, p1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkVideoRecordList isVideoRecordOn is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/am/veq;->qbh:Z

    if-eq v2, p1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/am/veq;->d(Z)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private qeg(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

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

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "videostate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {p2}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/veq;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/veq;->vju(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/veq;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/veq;->obl(II)Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/veq;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/veq;->irq(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/veq;IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/veq;->c(IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method private ugm()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/veq;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/veq;->ibl:Ljava/util/List;

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private vdb()V
    .locals 3

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.tencent.av.ui.AVActivity"

    const-string v1, "com.tencent.mobileqq"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.alibaba.android.teleconf.mozi.activity.TeleVideoConfActivity"

    const-string v2, "com.alibaba.android.rimet"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.p1.mobile.putong.core.newui.main.NewMainAct"

    const-string v2, "com.p1.mobile.putong"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cn.soulapp.android.component.chat.VideoChatActivity"

    const-string v2, "cn.soulapp.android"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.tencent.tim"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.bx.im.avchat.sender.AVChatSenderActivity"

    const-string v1, "com.yitantech.gaigai"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/veq;->ywr(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private vdw(ILjava/lang/String;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

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

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

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

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {p2}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private veq(IZ)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

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

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "audiostate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {p2}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private vju(Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFrontPkgChangedToTelephony: pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "frontpkg"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

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

    invoke-static {p1}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/am/veq;->lqr(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/veq;->ibl()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->bio:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/veq;->oif()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/veq;->igw:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/veq;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/veq;->qeg(IZ)V

    return-void
.end method

.method static synthetic you()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    return v0
.end method

.method private ywr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/veq;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/veq;->tsu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/veq;->tsu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/veq;->tsu:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/veq;->tsu:Ljava/util/HashMap;

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zgw()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/veq;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.ss.android.ugc.aweme"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.tencent.qqlive"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.qiyi.video"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "tv.danmaku.bili"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.youku.phone"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.smile.gifmaker"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "air.tv.douyu.android"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.duowan.kiwi"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.ss.android.article.video"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v2, "com.tencent.weishi"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    const-string v1, "com.google.android.youtube"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/veq;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/veq;->gwm:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingConfigChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mCurRecordPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/veq;->wtn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/veq;->cno:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/veq;->kth:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/am/veq;->cno:Landroid/media/AudioManager;

    :cond_2
    sget-boolean v1, Lcom/android/server/am/veq;->gwm:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingConfigChanged AudioManager.getMode() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/veq;->cno:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/veq;->wtn:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/server/am/rtg;

    invoke-direct {v3, p0}, Lcom/android/server/am/rtg;-><init>(Lcom/android/server/am/veq;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_6

    const/4 v1, 0x1

    move v2, v1

    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRecordingConfigChanged isNetworkCall is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/veq;->qbh:Z

    if-eq v2, v1, :cond_7

    invoke-direct {p0, v2}, Lcom/android/server/am/veq;->b(Z)V

    :cond_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/am/veq;->qbh(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public synthetic ear(Landroid/media/AudioRecordingConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/veq;->cjf(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p0

    return p0
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    if-eq p2, p5, :cond_3

    sget-boolean p3, Lcom/android/server/am/veq;->gwm:Z

    if-nez p3, :cond_0

    sget-boolean p3, Lcom/android/server/am/veq;->vdb:Z

    if-eqz p3, :cond_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "event frontPackageChanged packageName:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " |uid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " |luid:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/veq;->dma:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/am/veq;->rtg:Lcom/android/server/am/veq$sis;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "packagName"

    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    iget-object p2, p0, Lcom/android/server/am/veq;->you:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/veq;->bvj:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iput-object p1, p0, Lcom/android/server/am/veq;->gck:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/veq;->gck:Ljava/lang/String;

    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic hmo(Landroid/media/AudioRecordingConfiguration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/veq;->ire(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p0

    return p0
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object p3, p0, Lcom/android/server/am/veq;->zta:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iget-object p4, p0, Lcom/android/server/am/veq;->tsu:Ljava/util/HashMap;

    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashSet;

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/veq;->vdb:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontActivityChanged activityName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",packageName is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "set mCurRecordPackage to "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/am/veq;->wtn:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/veq;->wtn:Ljava/lang/String;

    :goto_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
