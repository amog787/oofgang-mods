.class public Lcom/oneplus/server/rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/rtg$zta;,
        Lcom/oneplus/server/rtg$you;
    }
.end annotation


# static fields
.field private static rtg:Lcom/oneplus/server/rtg; = null

.field public static final tsu:Ljava/lang/String; = "OpFrontMonitorService"


# instance fields
.field private sis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/oneplus/server/rtg$you;",
            ">;"
        }
    .end annotation
.end field

.field private you:Z

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/rtg;->zta:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/oneplus/server/rtg;->you:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    return-void
.end method

.method private sis(II)Z
    .locals 2

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const-string p1, "android.permission.REAL_GET_TASKS"

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const-string p0, "OpFrontMonitorService"

    const-string p1, "Requires get tasks permission!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized tsu()Lcom/oneplus/server/rtg;
    .locals 2

    const-class v0, Lcom/oneplus/server/rtg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/server/rtg;->rtg:Lcom/oneplus/server/rtg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/server/rtg;

    invoke-direct {v1}, Lcom/oneplus/server/rtg;-><init>()V

    sput-object v1, Lcom/oneplus/server/rtg;->rtg:Lcom/oneplus/server/rtg;

    :cond_0
    sget-object v1, Lcom/oneplus/server/rtg;->rtg:Lcom/oneplus/server/rtg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private you(Lcom/oneplus/frontmonitor/IFrontListener;II)V
    .locals 0

    iget-boolean p2, p0, Lcom/oneplus/server/rtg;->you:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appDiedLocked IBinder="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/oneplus/frontmonitor/IFrontListener;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpFrontMonitorService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p2, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/oneplus/frontmonitor/IFrontListener;->asBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oneplus/server/rtg$you;

    if-eqz p2, :cond_1

    sget-object p3, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {p3, p2}, Lcom/android/server/am/AppRecordManager;->obl(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    iget-object p0, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/oneplus/frontmonitor/IFrontListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/rtg;->you(Lcom/oneplus/frontmonitor/IFrontListener;II)V

    return-void
.end method


# virtual methods
.method public rtg(Lcom/oneplus/frontmonitor/IFrontListener;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/rtg;->sis(II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/oneplus/frontmonitor/IFrontListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/server/rtg;->you:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerFrontActivityListener  IBinder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpFrontMonitorService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    new-instance v3, Lcom/oneplus/server/rtg$zta;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/oneplus/server/rtg$zta;-><init>(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;II)V

    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    new-instance v0, Lcom/oneplus/server/rtg$you;

    invoke-direct {v0, p0, p1, v3}, Lcom/oneplus/server/rtg$you;-><init>(Lcom/oneplus/server/rtg;Lcom/oneplus/frontmonitor/IFrontListener;Lcom/oneplus/server/rtg$zta;)V

    iget-object p1, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OpFrontMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerFrontActivityListener failed:  IBinder="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "OpFrontMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate register  listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public ssp(Lcom/oneplus/frontmonitor/IFrontListener;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/rtg;->sis(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/oneplus/frontmonitor/IFrontListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/oneplus/server/rtg;->you:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterFrontActivityListener IBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpFrontMonitorService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/rtg$you;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManager;->obl(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    iget-object v0, p0, Lcom/oneplus/server/rtg;->sis:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
