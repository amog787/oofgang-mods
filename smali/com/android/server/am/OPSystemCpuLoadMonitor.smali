.class Lcom/android/server/am/OPSystemCpuLoadMonitor;
.super Lcom/android/server/am/gwm;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;,
        Lcom/android/server/am/OPSystemCpuLoadMonitor$you;,
        Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;,
        Lcom/android/server/am/OPSystemCpuLoadMonitor$sis;
    }
.end annotation


# static fields
.field private static final dma:I = 0x1

.field private static final gck:I = 0x1

.field private static final oif:I = 0x4

.field private static final qbh:I = 0x3

.field private static final wtn:Ljava/lang/String; = "OPSystemCpuLoadMonitor"

.field private static final ywr:I = 0x2


# instance fields
.field private bio:Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;

.field private cno:I

.field private igw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/OPSystemCpuLoadMonitor$you;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Z

.field private rtg:[I

.field private sis:I

.field private ssp:I

.field private tsu:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/gwm;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->sis:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu:I

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg:[I

    iput v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->ssp:I

    iput v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->cno:I

    iput-boolean v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->kth:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;

    sget-object v1, Lcom/android/server/am/gwm;->you:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;-><init>(Lcom/android/server/am/OPSystemCpuLoadMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->bio:Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OPSystemCpuLoadMonitor$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;-><init>()V

    return-void
.end method

.method private cno()V
    .locals 4

    const-string v0, "recordSampleData2"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu:I

    iget v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->sis:I

    const-string v2, "OPSystemCpuLoadMonitor"

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg:[I

    invoke-static {}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->sis()I

    move-result v3

    aput v3, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSampleStep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSample[mSampleStep] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg:[I

    iget v3, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu:I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu:I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->you()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curSystemLoad = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mLastCpuLoad = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->ssp:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg(I)Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    move-result-object v1

    iget v2, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->ssp:I

    invoke-direct {p0, v2}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg(I)Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    move-result-object v2

    if-eq v1, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg(I)Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->ssp(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V

    :cond_1
    iput v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->ssp:I

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw()V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method private igw()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleSamplePeriodic mHasSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemCpuLoadMonitor"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scheduleSamplePeriodic"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->bio:Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->bio:Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;

    invoke-static {}, Lcom/android/server/am/zgw;->dma()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method private rtg(I)Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;
    .locals 0

    const-string p0, "getSystemLoadType"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-static {}, Lcom/android/server/am/zgw;->bio()I

    move-result p0

    if-le p1, p0, :cond_0

    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->rtg:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/zgw;->rtg()I

    move-result p0

    if-le p1, p0, :cond_1

    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->tsu:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/zgw;->cno()I

    move-result p0

    if-le p1, p0, :cond_2

    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->sis:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    :goto_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-object p0
.end method

.method private static sis()I
    .locals 3

    const-string v0, "getCurrentCpuLoad"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/zgw;->ssp()I

    move-result v0

    :try_start_0
    invoke-static {}, Landroid/os/OpDebug;->getCurrentCpuLoad()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return v0

    :catch_0
    :try_start_1
    const-string v1, "OPSystemCpuLoadMonitor"

    const-string v2, "getCurrentCpuLoad error, maybe library libop_os_debug.so not found"

    invoke-static {v1, v2}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return v0

    :catchall_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return v0
.end method

.method private ssp(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteSystemLoadChanged loadType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemCpuLoadMonitor"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "noteSystemLoadChanged"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$you;

    invoke-interface {v1, p1}, Lcom/android/server/am/OPSystemCpuLoadMonitor$you;->zta(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static tsu()Lcom/android/server/am/OPSystemCpuLoadMonitor;
    .locals 1

    invoke-static {}, Lcom/android/server/am/OPSystemCpuLoadMonitor$sis;->zta()Lcom/android/server/am/OPSystemCpuLoadMonitor;

    move-result-object v0

    return-object v0
.end method

.method private you()I
    .locals 4

    const-string v0, "getAvgSystemLoad"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg:[I

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    iget-object p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->rtg:[I

    array-length p0, p0

    div-int/2addr v1, p0

    return v1
.end method

.method static synthetic zta(Lcom/android/server/am/OPSystemCpuLoadMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->cno()V

    return-void
.end method


# virtual methods
.method public bio()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleSample mHasSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemCpuLoadMonitor"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scheduleSample"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->kth:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->kth:Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->bio:Lcom/android/server/am/OPSystemCpuLoadMonitor$tsu;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public init()V
    .locals 2

    const-string v0, "OPSystemCpuLoadMonitor"

    const-string v1, "OPSystemCpuLoadMonitor init"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->tsu()Lcom/android/server/am/OPSystemCpuLoadMonitor;

    invoke-virtual {p0}, Lcom/android/server/am/OPSystemCpuLoadMonitor;->bio()V

    return-void
.end method

.method public kth(Lcom/android/server/am/OPSystemCpuLoadMonitor$you;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public wtn(Lcom/android/server/am/OPSystemCpuLoadMonitor$you;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor;->igw:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
