.class public Lcom/android/server/am/SocketTransition;
.super Lcom/android/server/am/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SocketTransition$tsu;,
        Lcom/android/server/am/SocketTransition$rtg;,
        Lcom/android/server/am/SocketTransition$sis;
    }
.end annotation


# static fields
.field public static final APPSTATE_BM:Ljava/lang/String; = "appStateBM"

.field private static final BULETOOTH_PACKAGENAME_LIST_RESET:Ljava/lang/String; = "com.bluetooth.resetAll"

.field private static final INVALID:I = -0x1

.field private static final NAME:Ljava/lang/String; = "ORMSocketServerHandler"

.field public static final PROCESSSTATE_BM:Ljava/lang/String; = "processStateBM"

.field public static final PROCESS_REMOVE:Ljava/lang/String; = "processRemove"

.field public static final PROCESS_START:Ljava/lang/String; = "processStart"

.field public static final PSS_UPDATE:Ljava/lang/String; = "pssUpdate"

.field public static final S_BM:Ljava/lang/String; = "bm"

.field public static final S_DIED_ADJ:Ljava/lang/String; = "diedAdj"

.field public static final S_KILL_REASON:Ljava/lang/String; = "reason"

.field public static final S_PID:Ljava/lang/String; = "pid"

.field public static final S_PKG:Ljava/lang/String; = "pkg"

.field public static final S_PROC:Ljava/lang/String; = "proc"

.field public static final S_PSS:Ljava/lang/String; = "pss"

.field public static final S_UID:Ljava/lang/String; = "uid"

.field public static final TAG:Ljava/lang/String; = "LORM-SocketTransition"

.field public static final UPDATE_HIGH_USED:I = 0x1

.field private static mORMFeaturEnable:Z

.field private static mORMRestart:Z

.field private static mPidKillbyHighPower:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPkgKillbyHighPower:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUidKillbyHighPower:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIntance:Lcom/android/server/am/SocketTransition;

.field private static sOMMInputStream:Ljava/io/InputStream;

.field private static sOMMOutputStream:Ljava/io/OutputStream;

.field private static sOMMSocket:Landroid/net/LocalSocket;

.field private static sOMMSocketLock:Ljava/lang/Object;


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

.field final mBluetoothList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurFntFkg:Ljava/lang/String;

.field private mCurFntUid:I

.field private mFGActivityListener:Lcom/android/server/am/SocketTransition$tsu;

.field private mHandler:Lcom/android/server/am/SocketTransition$rtg;

.field private mLastFntFkg:Ljava/lang/String;

.field private mLastFntUid:I

.field private mLastminiprogramPid:I

.field private mLastminiprogramUid:I

.field final mProcList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocketLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/SocketTransition;->mPidKillbyHighPower:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/SocketTransition;->mUidKillbyHighPower:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/SocketTransition;->mPkgKillbyHighPower:Ljava/util/Set;

    const-string v0, "persist.sys.orm.feature.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SocketTransition;->mORMFeaturEnable:Z

    const-string v0, "persist.vendor.orm.restart"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/SocketTransition;->mORMRestart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "ORMSocketServerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/am/j;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/SocketTransition$sis;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SocketTransition$sis;-><init>(Lcom/android/server/am/SocketTransition;Lcom/android/server/am/SocketTransition$zta;)V

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mBluetoothList:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/server/am/SocketTransition;->mThread:Landroid/os/HandlerThread;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mAMS:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/SocketTransition$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/am/SocketTransition$tsu;-><init>(Lcom/android/server/am/SocketTransition;)V

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mFGActivityListener:Lcom/android/server/am/SocketTransition$tsu;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/SocketTransition;->mLastminiprogramUid:I

    iput v0, p0, Lcom/android/server/am/SocketTransition;->mLastminiprogramPid:I

    iput-object v1, p0, Lcom/android/server/am/SocketTransition;->mLastFntFkg:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/SocketTransition;->mLastFntUid:I

    iput-object v1, p0, Lcom/android/server/am/SocketTransition;->mCurFntFkg:Ljava/lang/String;

    iput v0, p0, Lcom/android/server/am/SocketTransition;->mCurFntUid:I

    new-instance v1, Lcom/android/server/am/SocketTransition$zta;

    invoke-direct {v1, p0}, Lcom/android/server/am/SocketTransition$zta;-><init>(Lcom/android/server/am/SocketTransition;)V

    iput-object v1, p0, Lcom/android/server/am/SocketTransition;->mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

    sget-boolean v1, Lcom/android/server/am/dma;->kth:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xf7

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/SocketTransition;->mORMFeaturEnable:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SocketTransition"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/SocketTransition$rtg;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/SocketTransition$rtg;-><init>(Lcom/android/server/am/SocketTransition;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/SocketTransition;->mHandler:Lcom/android/server/am/SocketTransition$rtg;

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->vdb:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->gck:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->dma:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/SocketTransition;->mAppStateListener:Lcom/android/server/am/SocketTransition$sis;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    const-string v0, "LORM-SocketTransition"

    const-string v1, "SocketTransition init part1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mSystemPropertiesChangedCallback:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocketLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(IILjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SocketTransition;->isKillByHigPower(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/am/SocketTransition;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/SocketTransition;->createAppStateBM(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/SocketTransition;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mCurFntFkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition;->mCurFntFkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/am/SocketTransition;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/SocketTransition;->mCurFntUid:I

    return p0
.end method

.method static synthetic access$1302(Lcom/android/server/am/SocketTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/SocketTransition;->mCurFntUid:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition;->mLastFntFkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/am/SocketTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/SocketTransition;->mLastFntUid:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/SocketTransition;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/SocketTransition;->updateHighUsedApp()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/SocketTransition;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/SocketTransition;->mLastminiprogramUid:I

    return p0
.end method

.method static synthetic access$1702(Lcom/android/server/am/SocketTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/SocketTransition;->mLastminiprogramUid:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/SocketTransition;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/SocketTransition;->mLastminiprogramPid:I

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/am/SocketTransition;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/SocketTransition;->mLastminiprogramPid:I

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/SocketTransition;->mORMRestart:Z

    return p0
.end method

.method static synthetic access$300(I)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SocketTransition;->checkIsolatedUid(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/am/SocketTransition;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SocketTransition;->isDataNeedFilter(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/am/SocketTransition;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/SocketTransition;->createPorcessStateBM(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SocketTransition;->isDataNeedFilter(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/am/SocketTransition;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/SocketTransition;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SocketTransition;->isDataNeedFilter(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/am/SocketTransition;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(I)V

    return-void
.end method

.method private static checkIsolatedUid(I)I
    .locals 2

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "uid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "pid"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "bm"

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "appStateBM"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createAppStateBM Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    return-object v1
.end method

.method private createAppStateBM(I)V
    .locals 6

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackagesFromUid(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {p1, v2}, Lcom/android/server/am/AppRecordManager;->you(ILjava/lang/String;)Lcom/android/server/am/bio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/bio;->tsu()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, p1, v3, v4, v5}, Lcom/android/server/am/SocketTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAppStateBM(IILjava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/bio;->tsu()I

    move-result p0

    int-to-long v0, p0

    invoke-static {p3, p1, p2, v0, v1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method static createAppStateBM(ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/android/server/am/SocketTransition;->checkIsolatedUid(I)I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManager;->you(ILjava/lang/String;)Lcom/android/server/am/bio;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/bio;->tsu()I

    move-result p0

    int-to-long v1, p0

    const/4 p0, -0x1

    invoke-static {p1, v0, p0, v1, v2}, Lcom/android/server/am/SocketTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method private createAppStateBM(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->ywr(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/SocketTransition;->checkIsolatedUid(I)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManager;->you(ILjava/lang/String;)Lcom/android/server/am/bio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/bio;->tsu()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, -0x1

    invoke-static {p1, p0, v2, v0, v1}, Lcom/android/server/am/SocketTransition;->createAppStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method private createPorcessStateBM(II)V
    .locals 8

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/bio;->cno()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/bio;->ssp(I)Lcom/android/server/am/g;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->kth(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/bio;->ssp(I)Lcom/android/server/am/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/g;->tsu()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    int-to-long v6, v1

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/SocketTransition;->createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private createPorcessStateBM(IILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/bio;->tsu()I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/SocketTransition;->createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->writeOMM([BLjava/nio/ByteBuffer;)Z

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/SocketTransition;
    .locals 1

    sget-object v0, Lcom/android/server/am/SocketTransition;->sIntance:Lcom/android/server/am/SocketTransition;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/SocketTransition;

    invoke-direct {v0}, Lcom/android/server/am/SocketTransition;-><init>()V

    sput-object v0, Lcom/android/server/am/SocketTransition;->sIntance:Lcom/android/server/am/SocketTransition;

    :cond_0
    sget-object v0, Lcom/android/server/am/SocketTransition;->sIntance:Lcom/android/server/am/SocketTransition;

    return-object v0
.end method

.method private static getPkgUid(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private isDataNeedFilter(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->bio(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDataNeedFilter(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->kth(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isDataNeedFilter(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SCREEN OFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isKillByHigPower(IILjava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/bio;

    invoke-static {p2, p0}, Lcom/android/server/am/SocketTransition;->getPkgUid(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, Lcom/android/server/am/SocketTransition;->mPidKillbyHighPower:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lcom/android/server/am/SocketTransition;->mPidKillbyHighPower:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/am/SocketTransition;->mPkgKillbyHighPower:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/am/SocketTransition;->mPkgKillbyHighPower:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/SocketTransition;->mUidKillbyHighPower:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/am/SocketTransition;->mUidKillbyHighPower:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static openOMMSocketLS()Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "ommsocket"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SocketTransition;->sOMMOutputStream:Ljava/io/OutputStream;

    sget-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SocketTransition;->sOMMInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "LORM-SocketTransition"

    const-string v1, "ommsocket open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    const/4 v0, 0x0

    return v0
.end method

.method static readOMMReplyLS(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/SocketTransition;->sOMMInputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "LORM-SocketTransition"

    const-string v1, "Error reading from omm socket"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    return v0
.end method

.method public static recordPkgkillbyhighpower(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/SocketTransition;->getPkgUid(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/SocketTransition;->mPkgKillbyHighPower:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static recordProcesskillbyhighpower(I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/SocketTransition;->mPidKillbyHighPower:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static recordUidkillbyhighpower(I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/SocketTransition;->mUidKillbyHighPower:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static recordkillReason(II)V
    .locals 0

    return-void
.end method

.method private sendUpdateHighUsedMsg()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mHandler:Lcom/android/server/am/SocketTransition$rtg;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateHighUsedApp()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/SocketTransition;->sendUpdateHighUsedMsg()V

    iget-object v0, p0, Lcom/android/server/am/SocketTransition;->mHandler:Lcom/android/server/am/SocketTransition$rtg;

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static writeOMM([BLjava/nio/ByteBuffer;)Z
    .locals 7

    sget-object v0, Lcom/android/server/am/SocketTransition;->sOMMSocketLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/a;->tsu()Lcom/android/server/am/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/a;->rtg()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/am/SocketTransition;->mORMRestart:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    sget-object v3, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/am/SocketTransition;->openOMMSocketLS()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const-wide/16 v3, 0xa

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "LORM-SocketTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeOMM InterruptedException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/SocketTransition;->writeOMMCommandLS([B)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/server/am/SocketTransition;->readOMMReplyLS(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    const-string p0, "LORM-SocketTransition"

    const-string p1, "openOMMSocketLS times out"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v0

    return v2

    :cond_6
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static writeOMMCommandLS([B)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/server/am/SocketTransition;->sOMMOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "LORM-SocketTransition"

    const-string v0, "Error writing to omm socket"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/SocketTransition;->sOMMSocket:Landroid/net/LocalSocket;

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createProcessRemove(Ljava/lang/String;IILjava/lang/String;II)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "proc"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reason"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "diedAdj"

    invoke-virtual {p0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "processRemove"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createProcessRemove Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessStart(Ljava/lang/String;IILjava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "proc"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bm"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "processStart"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createProcessStart Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    return-object v0
.end method

.method public createProcessStateBM(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bm"

    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "processStateBM"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createProcessStateBM Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPssUpdate(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pss"

    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "pssUpdate"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createPssUpdate Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    return-object v0
.end method

.method public handleMessageAsync(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleMessageSync(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method initOMMAppRecord(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/dma;->kth:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf7

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/SocketTransition;->mORMFeaturEnable:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/am/SocketTransition;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/SocketTransition;->mFGActivityListener:Lcom/android/server/am/SocketTransition$tsu;

    invoke-virtual {p1, v0}, Lcom/android/server/OnePlusUtil$zta;->kth(Lcom/android/server/OnePlusUtil$zta$zta;)V

    invoke-direct {p0}, Lcom/android/server/am/SocketTransition;->sendUpdateHighUsedMsg()V

    new-instance p1, Lcom/android/server/am/SocketTransition$you;

    invoke-direct {p1, p0}, Lcom/android/server/am/SocketTransition$you;-><init>(Lcom/android/server/am/SocketTransition;)V

    iput-object p1, p0, Lcom/android/server/am/SocketTransition;->mRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mHandler:Lcom/android/server/am/SocketTransition$rtg;

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "LORM-SocketTransition"

    const-string p1, "SocketTransition init part2"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method isPersistProcess(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/bio;->ssp(I)Lcom/android/server/am/g;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/g;->ssp:Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method isPersistProcessFromAMS(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method removeProc(II)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->zta(II)Lcom/android/server/am/bio;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/bio;->ssp(I)Lcom/android/server/am/g;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    monitor-enter p2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/am/g;->sis:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/SocketTransition;->mProcList:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/am/g;->sis:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
