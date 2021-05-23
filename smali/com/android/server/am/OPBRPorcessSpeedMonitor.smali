.class Lcom/android/server/am/OPBRPorcessSpeedMonitor;
.super Lcom/android/server/am/gwm;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;,
        Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;,
        Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;,
        Lcom/android/server/am/OPBRPorcessSpeedMonitor$tsu;
    }
.end annotation


# static fields
.field private static dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor; = null

.field private static final gck:Ljava/lang/String; = "OPBRPorcessSpeedMonitor"

.field private static final ywr:I = 0x1


# instance fields
.field private bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;

.field private cno:I

.field private igw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Z

.field private rtg:[I

.field private sis:I

.field private ssp:I

.field private tsu:I

.field private wtn:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/gwm;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->sis:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu:I

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    iput v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->ssp:I

    iput v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    iput-boolean v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->kth:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->zta:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    iput-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->wtn:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    new-instance v0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;

    sget-object v1, Lcom/android/server/am/gwm;->you:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;-><init>(Lcom/android/server/am/OPBRPorcessSpeedMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;

    invoke-virtual {p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->bio()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OPBRPorcessSpeedMonitor$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;-><init>()V

    return-void
.end method

.method private cno()V
    .locals 5

    const-string v0, "recordSampleData"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu:I

    iget v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->sis:I

    const-string v2, "OPBRPorcessSpeedMonitor"

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    invoke-direct {p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->sis()I

    move-result v3

    aput v3, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSampleStep = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSample[mSampleStep] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    iget v3, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu:I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->tsu:I

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->you()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg(I)Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curSpeed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLastSpeedType = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->wtn:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " curBrSpeedType = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->wtn:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    if-eq v1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->ssp(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V

    :cond_1
    iput-object v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->wtn:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw()V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method private igw()V
    .locals 3

    const-string v0, "OPBRPorcessSpeedMonitor"

    const-string v1, "scheduleSampleSpeedPeriodic"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;

    invoke-static {}, Lcom/android/server/am/zgw;->dma()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method private rtg(I)Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;
    .locals 0

    const-string p0, "getProcessSpeedType"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->zta:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-static {}, Lcom/android/server/am/zgw;->oif()I

    move-result p0

    if-le p1, p0, :cond_0

    sget-object p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->rtg:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/zgw;->qbh()I

    move-result p0

    if-le p1, p0, :cond_1

    sget-object p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->tsu:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/zgw;->ywr()I

    move-result p0

    if-le p1, p0, :cond_2

    sget-object p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->sis:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->you:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    :goto_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-object p0
.end method

.method private sis()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ssp(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteSpeedChanged speedType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPBRPorcessSpeedMonitor"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scheduleSampleSpeedPeriodic"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;

    invoke-interface {v1, p1}, Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;->zta(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V

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

.method public static tsu()Lcom/android/server/am/OPBRPorcessSpeedMonitor;
    .locals 1

    invoke-static {}, Lcom/android/server/am/OPBRPorcessSpeedMonitor$tsu;->zta()Lcom/android/server/am/OPBRPorcessSpeedMonitor;

    move-result-object v0

    return-object v0
.end method

.method private you()I
    .locals 4

    const-string v0, "getAvgSpeed"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mSample[i] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPBRPorcessSpeedMonitor"

    invoke-static {v3, v2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    iget-object p0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->rtg:[I

    array-length p0, p0

    div-int/2addr v1, p0

    return v1
.end method

.method static synthetic zta(Lcom/android/server/am/OPBRPorcessSpeedMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno()V

    return-void
.end method


# virtual methods
.method public bio()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleSampleSpeed mHasSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPBRPorcessSpeedMonitor"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scheduleSampleSpeed"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->kth:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->kth:Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public kth(Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

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

.method public speedMonitor(ZI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "speedMonitor"

    invoke-static {v0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    :goto_0
    const-string v0, "OPBRPorcessSpeedMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isdequeue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " count = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mRealProcessSpeed = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->cno:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public wtn(Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OPBRPorcessSpeedMonitor;->igw:Ljava/util/HashSet;

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
