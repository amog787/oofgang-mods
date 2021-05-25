.class public Lcom/android/server/am/OnePlusMemoryTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/am/IOpMemoryTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusMemoryTracker$bio;,
        Lcom/android/server/am/OnePlusMemoryTracker$ssp;,
        Lcom/android/server/am/OnePlusMemoryTracker$cno;,
        Lcom/android/server/am/OnePlusMemoryTracker$tsu;,
        Lcom/android/server/am/OnePlusMemoryTracker$kth;,
        Lcom/android/server/am/OnePlusMemoryTracker$rtg;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.opmt.action.test"

.field private static final DEBUG_MODE:Z

.field public static final DROPBOX_FILE:Ljava/lang/String; = "/data/system/memory_tracker.txt"

.field private static final DROPBOX_TAG:Ljava/lang/String; = "memory_tracker"

.field private static final DROPBOX_TAG_FOR_CRITIACAL:Ljava/lang/String; = "critical_low_memory_tracker"

.field private static final DUMP_MEM_OOM_ADJ:[I

.field private static final DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

.field private static final FLAG_LOG_EVENTS:I = 0x4

.field private static final FLAG_LOG_KERNEL:I = 0x8

.field private static final FLAG_LOG_MAIN:I = 0x2

.field private static final FLAG_LOG_SYSTEM:I = 0x1

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field private static final KEY_PID:Ljava/lang/String; = "pid"

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "memory"

.field private static final MDM_EVENT_NO_CACHE:Ljava/lang/String; = "memory_no_cache"

.field private static final MDM_NO_CACHE_CONTENT:Ljava/lang/String; = "content"

.field private static final MDM_PROCESSNAME:Ljava/lang/String; = "pn"

.field private static final MDM_TOTAL_MEMORY:Ljava/lang/String; = "tm"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "MemoryTracker"

.field private static final PROP_COPY_ION:Ljava/lang/String; = "persist.sys.opmt.copyion"

.field private static final PROP_DROPBOX:Ljava/lang/String; = "persist.sys.opmt.dropbox"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opmt.enable"

.field private static final PROP_MDM:Ljava/lang/String; = "persist.sys.opmt.mdm"

.field private static final PROP_REPORT:Ljava/lang/String; = "persist.sys.opmt.report"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "OPMT"

.field private static mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

.field private static sDebug:Z

.field private static sDebugCritical:Z

.field private static sDropbox:Z

.field private static sDropboxMaxSize:I

.field public static sInUsing:Z

.field private static sLogcatLineNum:I

.field private static sMdm:Z

.field private static sReport:Z

.field private static sReportInterval:J

.field private static sReportNoCache:Z

.field private static sReportNoCacheInterval:J

.field private static sStartReportNoCacheInterval:J

.field private static sSwitchBackgroundTimeount:J


# instance fields
.field private extraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mCommandFlag:I

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$ssp;

.field private mContext:Landroid/content/Context;

.field private mCriticalReport:Z

.field private mDeviceTotalMemory:Ljava/lang/String;

.field private mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

.field private mIsDumping:Z

.field private mLastReportCriticalTime:J

.field private mLastReportNoCacheTime:J

.field private mLastReportPackage:Ljava/lang/String;

.field private mLastReportTime:J

.field private mLockReport:Ljava/lang/Object;

.field private mLruApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$tsu;",
            ">;"
        }
    .end annotation
.end field

.field private mNoCacheTopRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusMemoryTracker$bio;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mRecentFrontUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusMemoryTracker$kth;",
            ">;"
        }
    .end annotation
.end field

.field private mStartReportNoCache:Z

.field private mTestReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-string v0, "persist.sys.opmt.debugmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sInUsing:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sMdm:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusMemoryTracker;->sDropbox:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCache:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusMemoryTracker;->sDebugCritical:Z

    const-string v2, "Native"

    const-string v3, "System"

    const-string v4, "Persistent"

    const-string v5, "Persistent Service"

    const-string v6, "Foreground"

    const-string v7, "Visible"

    const-string v8, "Perceptible"

    const-string v9, "Perceptible Low"

    const-string v10, "Heavy Weight"

    const-string v11, "Backup"

    const-string v12, "A Services"

    const-string v13, "Home"

    const-string v14, "Previous"

    const-string v15, "B Services"

    const-string v16, "Cached"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusMemoryTracker;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/OnePlusMemoryTracker;->DUMP_MEM_OOM_ADJ:[I

    const/high16 v0, 0x40000

    sput v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDropboxMaxSize:I

    const/16 v0, 0x800

    sput v0, Lcom/android/server/am/OnePlusMemoryTracker;->sLogcatLineNum:I

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/OnePlusMemoryTracker;->sSwitchBackgroundTimeount:J

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_0

    move-wide v3, v1

    goto :goto_0

    :cond_0
    const-wide/32 v3, 0xa4cb80

    :goto_0
    sput-wide v3, Lcom/android/server/am/OnePlusMemoryTracker;->sReportInterval:J

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v1, 0x5265c00

    :goto_1
    sput-wide v1, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCacheInterval:J

    const-wide/32 v0, 0x1d4c0

    sput-wide v0, Lcom/android/server/am/OnePlusMemoryTracker;->sStartReportNoCacheInterval:J

    return-void

    :array_0
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x64
        0xc8
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    const/16 p1, 0xc

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCriticalReport:Z

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLruApps:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportPackage:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLockReport:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$sis;

    invoke-direct {p1, p0}, Lcom/android/server/am/OnePlusMemoryTracker$sis;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mTestReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sInUsing:Z

    const-string v0, "persist.sys.opmt.enable"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sInUsing:Z

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sMdm:Z

    const-string v0, "persist.sys.opmt.mdm"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sMdm:Z

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sDropbox:Z

    const-string v0, "persist.sys.opmt.dropbox"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sDropbox:Z

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    const-string v0, "persist.sys.opmt.report"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$cno;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$cno;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    const-string v0, "appid"

    const-string v1, "NYNCG4I0TI"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sInUsing:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->writeLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    return-void
.end method

.method static synthetic access$1000()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCacheInterval:J

    return-wide v0
.end method

.method static synthetic access$1002(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCacheInterval:J

    return-wide p0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->reportNoCacheMDM()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusMemoryTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/server/am/OnePlusMemoryTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateEnable(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateMDMEnable(Z)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sMdm:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateDropboxEnable(Z)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDropbox:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusMemoryTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusMemoryTracker;->updateTimeout(J)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusMemoryTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusMemoryTracker;->updateInterval(J)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/am/OnePlusMemoryTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    return p1
.end method

.method static synthetic access$2100()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportInterval:J

    return-wide v0
.end method

.method static synthetic access$2102(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportInterval:J

    return-wide p0
.end method

.method static synthetic access$2200(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateLogcatLineNumber(I)V

    return-void
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusMemoryTracker;->sLogcatLineNum:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateDropboxSize(I)V

    return-void
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDropboxMaxSize:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->updateCommandFlag(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusMemoryTracker;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    return p0
.end method

.method static synthetic access$2702(Lcom/android/server/am/OnePlusMemoryTracker;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    return p1
.end method

.method static synthetic access$2800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    return v0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    return p0
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCache:Z

    return v0
.end method

.method static synthetic access$2902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCache:Z

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusMemoryTracker;->sSwitchBackgroundTimeount:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/OnePlusMemoryTracker;I)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getCommand(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/OnePlusMemoryTracker;->sSwitchBackgroundTimeount:J

    return-wide p0
.end method

.method static synthetic access$3100(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getLruApps()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/am/OnePlusMemoryTracker;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->getMemoryInfo(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    return-void
.end method

.method static synthetic access$3402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebugCritical:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->registerOnlineConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->grabOnlineConfig()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->initMemoryInfo()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusMemoryTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportNoCacheTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/am/OnePlusMemoryTracker;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportNoCacheTime:J

    return-wide p1
.end method

.method private doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock AM took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker$zta;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getAllProcessMeminfo(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$rtg;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->kth:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/server/am/OnePlusMemoryTracker;->sortMemItems(Ljava/util/List;)V

    iget-object v1, v1, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->kth:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->getAllProcessMeminfo(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommand(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/bin/timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-k"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "15s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/logcat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "threadtime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 v1, v1, 0x4

    const-string v2, "-b"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "kernel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "main"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p0, "-t"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDeviceTotalMemory()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mDeviceTotalMemory:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusMemoryTracker;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusMemoryTracker;->mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusMemoryTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/OnePlusMemoryTracker;->mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusMemoryTracker;->mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    return-object p0
.end method

.method private getIonMeminfo()Ljava/lang/String;
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "========================================================\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ION Debug info"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/oem_log/dropbox/ion_debug"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method

.method private getKgslMem()Ljava/lang/String;
    .locals 11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\n========================================================\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "KGSL MEM INFO"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "/sys/kernel/debug/kgsl/proc/"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    const-string v8, "%s/%s/mem"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v5

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "=======("

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")========\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    move-object v1, v8

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v8

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw p0
.end method

.method private getLruApps()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLruApps:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v8

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusMemoryTracker$tsu;-><init>(Ljava/lang/String;IIIIZLandroid/app/IApplicationThread;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p0, "OPMT"

    const-string v0, "error...initialization not ok."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getMemoryInfo(Z)Ljava/lang/String;
    .locals 39

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sget-object v3, Lcom/android/server/am/OnePlusMemoryTracker;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    array-length v4, v3

    new-array v5, v4, [J

    array-length v6, v3

    new-array v6, v6, [J

    array-length v3, v3

    new-array v3, v3, [Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    :goto_0
    if-ltz v7, :cond_9

    iget-object v9, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object v8, v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->cno:Landroid/app/IApplicationThread;

    move-object/from16 v29, v1

    iget v1, v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->sis:I

    iget v0, v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->tsu:I

    move/from16 v30, v7

    iget-boolean v7, v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->ssp:Z

    if-eqz v8, :cond_8

    if-nez v10, :cond_0

    new-instance v10, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v10}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_0
    invoke-static {v1, v10}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v8

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    int-to-long v5, v8

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v8

    move-object/from16 v34, v3

    move/from16 v33, v4

    int-to-long v3, v8

    if-eqz v10, :cond_7

    add-long/2addr v11, v5

    add-long/2addr v13, v3

    new-instance v8, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    move-object/from16 v35, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v36, v11

    iget-object v11, v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->zta:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (pid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    const-string v11, " / activities)"

    goto :goto_1

    :cond_1
    const-string v11, ")"

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v9, v9, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->zta:Ljava/lang/String;

    move-object/from16 v20, v8

    move-object/from16 v22, v9

    move-wide/from16 v23, v5

    move-wide/from16 v25, v3

    move/from16 v27, v1

    move/from16 v28, v7

    invoke-direct/range {v20 .. v28}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    invoke-virtual {v2, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x384

    if-lt v0, v1, :cond_2

    add-long/2addr v15, v5

    :cond_2
    move/from16 v7, v33

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_6

    add-int/lit8 v9, v7, -0x1

    if-eq v1, v9, :cond_4

    sget-object v9, Lcom/android/server/am/OnePlusMemoryTracker;->DUMP_MEM_OOM_ADJ:[I

    aget v10, v9, v1

    if-lt v0, v10, :cond_3

    add-int/lit8 v10, v1, 0x1

    aget v9, v9, v10

    if-ge v0, v9, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    aget-wide v9, v31, v1

    add-long/2addr v9, v5

    aput-wide v9, v31, v1

    aget-wide v5, v32, v1

    add-long/2addr v5, v3

    aput-wide v5, v32, v1

    aget-object v0, v34, v1

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    aput-object v0, v34, v1

    :cond_5
    aget-object v0, v34, v1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v10, v35

    move-wide/from16 v11, v36

    goto :goto_4

    :cond_7
    move-object/from16 v35, v10

    move/from16 v7, v33

    goto :goto_4

    :cond_8
    move-object/from16 v34, v3

    move v7, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    :goto_4
    add-int/lit8 v0, v30, -0x1

    move v4, v7

    move-object/from16 v1, v29

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-object/from16 v3, v34

    move v7, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v29, v1

    move-object/from16 v34, v3

    move v7, v4

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    iget-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v1, :cond_a

    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    :cond_a
    iget-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_e

    iget-object v5, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    iget-wide v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v17, 0x0

    cmp-long v6, v8, v17

    if-lez v6, :cond_d

    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_d

    if-nez v10, :cond_b

    new-instance v10, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v10}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_b
    iget v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v6, v10}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v6

    int-to-long v8, v6

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v6

    move-object/from16 v30, v2

    move/from16 v33, v3

    int-to-long v2, v6

    add-long/2addr v11, v8

    add-long/2addr v13, v2

    new-instance v6, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    move-wide/from16 v35, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    iget-object v11, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v10}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v12

    move-wide/from16 v37, v13

    int-to-long v12, v12

    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v28, 0x0

    move-object/from16 v20, v6

    move-object/from16 v22, v11

    move-wide/from16 v23, v8

    move-wide/from16 v25, v12

    move/from16 v27, v5

    invoke-direct/range {v20 .. v28}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    const/4 v5, 0x0

    aget-wide v11, v31, v5

    add-long/2addr v11, v8

    aput-wide v11, v31, v5

    aget-wide v8, v32, v5

    add-long/2addr v8, v2

    aput-wide v8, v32, v5

    aget-object v2, v34, v5

    if-nez v2, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v34, v5

    :cond_c
    aget-object v2, v34, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v11, v35

    move-wide/from16 v13, v37

    goto :goto_6

    :cond_d
    move-object/from16 v30, v2

    move/from16 v33, v3

    const/4 v5, 0x0

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v30

    move/from16 v3, v33

    goto/16 :goto_5

    :cond_e
    const/4 v5, 0x0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_7
    if-ge v8, v7, :cond_10

    aget-wide v2, v31, v8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/server/am/OnePlusMemoryTracker;->DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v19, v2, v8

    new-instance v2, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    aget-wide v20, v31, v8

    aget-wide v22, v32, v8

    sget-object v3, Lcom/android/server/am/OnePlusMemoryTracker;->DUMP_MEM_OOM_ADJ:[I

    aget v24, v3, v8

    move-object/from16 v17, v2

    move-object/from16 v18, v19

    invoke-direct/range {v17 .. v24}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    aget-object v3, v34, v8

    iput-object v3, v2, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->kth:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    const-string v2, "Total PSS by OOM adjustment:\n"

    move-object/from16 v3, v29

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_11

    const-string v2, "OPMT"

    const-string v4, "Total PSS by OOM adjustment:\n"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->getAllProcessMeminfo(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Total RAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Free RAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    add-long/2addr v4, v15

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v15 .. v16}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cached pss + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cached kernel + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " free)\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Used RAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, v11, v15

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " used pss + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " kernel)\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    sub-long/2addr v11, v13

    sub-long/2addr v4, v11

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-string v6, "Lost RAM: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ZRAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " physical used for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in swap ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " total swap)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_12

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OPMT"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getOtherMemoryUsage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getOtherMemoryUsage()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getProcMeminfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getIonMeminfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "========dumpsys media.player=====\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "media.player"

    invoke-direct {p0, v3, v2}, Lcom/android/server/am/OnePlusMemoryTracker;->runDumpService(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "========dumpsys media.extractor=====\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "media.extractor"

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->runDumpService(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getKgslMem()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "========end=====\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProcMeminfo()Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "========================================================\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/proc/meminfo"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_4
    throw p0
.end method

.method private grabOnlineConfig()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OPMT"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    const-string v2, "MemoryTracker"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$ssp;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$ssp;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method private initMemoryInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getDeviceTotalMemory()Ljava/lang/String;

    return-void
.end method

.method private registerOnlineConfig()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OPMT"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    iget-object v3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$ssp;

    const-string v4, "MemoryTracker"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private reportAppEvent(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportAppEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sMdm:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->reportToMDM(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    :cond_1
    return-void
.end method

.method private reportCritical(Lcom/android/server/am/ProcessRecord;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v0, 0x2bc

    if-gt p1, v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportCriticalTime:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_0

    sub-long v3, v1, v3

    sget-wide v5, Lcom/android/server/am/OnePlusMemoryTracker;->sReportInterval:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_6

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    const-string v3, "OPMT"

    if-eqz p1, :cond_2

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz p0, :cond_1

    const-string p0, "Dumping memory now, skip this time"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getLruApps()V

    iget-object v4, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget v5, v5, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->rtg:I

    if-le v5, v0, :cond_3

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCriticalReport:Z

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz p0, :cond_4

    const-string p0, "Skip this critical report, still has process adj > 700"

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    const-string v0, "Dump critical low memory"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCriticalReport:Z

    iput-wide v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportCriticalTime:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    :cond_6
    return-void
.end method

.method private reportMemoryDump(II)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int v1, p1, p2

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    const-string v1, "OPMT"

    if-nez v0, :cond_3

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mStartReportNoCache is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", please wait"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportTime:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    sub-long v4, v2, v4

    sget-wide v6, Lcom/android/server/am/OnePlusMemoryTracker;->sReportInterval:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz p0, :cond_4

    const-string p0, "ignore this dropbox event cause too freq"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    if-eqz v0, :cond_7

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz p0, :cond_6

    const-string p0, "Dumping memory now, skip this time"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mIsDumping:Z

    iput-wide v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numCached : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", numEmpty : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getLruApps()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    :cond_8
    return-void
.end method

.method private reportNoCache(IILcom/android/server/am/ProcessRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sReportNoCache:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    if-nez v0, :cond_2

    sget-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mStartReportNoCache is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mStartReportNoCache:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", please wait"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPMT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLockReport:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_4

    add-int v1, p1, p2

    if-gtz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportPackage:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget p2, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v0, "pid"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string p3, "pkg"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_4
    :goto_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz v1, :cond_5

    const-string v1, "OPMT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "top : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", numCached: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", numEmpty: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mLastReportPackage : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportPackage:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private reportNoCacheMDM()V
    .locals 7

    const-string v0, "OPMT"

    const-string v1, "start to reportNoCacheMDM"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusMemoryTracker$bio;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusMemoryTracker$bio;->sis()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v3, v2, :cond_0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "content"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    const-string v5, "memory_no_cache"

    iget-object v6, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v2, v6}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    sget-boolean v2, Lcom/android/server/am/OnePlusMemoryTracker;->DEBUG_MODE:Z

    if-eqz v2, :cond_2

    const-string v2, "OPMT"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mNoCacheTopRecords:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "OPMT"

    const-string v0, "finish reportNoCacheMDM"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private reportToMDM(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportToMDM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->zta:Ljava/lang/String;

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getDeviceTotalMemory()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tm"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->extraData:Ljava/util/HashMap;

    const-string v2, "memory"

    invoke-virtual {p1, v1, v2, v0, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private varargs runDumpService(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p0, "OPMT"

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dumpsys service is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {v1, p2}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;[Ljava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpsys"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private static sortMemItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusMemoryTracker$rtg;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker$you;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusMemoryTracker$you;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static stringifyKBSize(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OnePlusMemoryTracker;->stringifySize(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stringifySize(JI)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/16 v3, 0x400

    const-wide/16 v4, 0x400

    if-eq p2, v3, :cond_2

    const/high16 v3, 0x100000

    if-eq p2, v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p2, v3, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,1dG"

    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid size order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,5dM"

    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,9dK"

    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,13d"

    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateCommandFlag(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mCommandFlag:I

    return-void
.end method

.method private updateDropboxEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sDropbox:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.dropbox"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDropboxSize(I)V
    .locals 0

    sput p1, Lcom/android/server/am/OnePlusMemoryTracker;->sDropboxMaxSize:I

    return-void
.end method

.method private updateEnable(Z)V
    .locals 1

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sInUsing:Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->dma(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.enable"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateInterval(J)V
    .locals 0

    sput-wide p1, Lcom/android/server/am/OnePlusMemoryTracker;->sReportInterval:J

    return-void
.end method

.method private updateLogcatLineNumber(I)V
    .locals 0

    sput p1, Lcom/android/server/am/OnePlusMemoryTracker;->sLogcatLineNum:I

    return-void
.end method

.method private updateMDMEnable(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusMemoryTracker;->sMdm:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.mdm"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTimeout(J)V
    .locals 0

    sput-wide p1, Lcom/android/server/am/OnePlusMemoryTracker;->sSwitchBackgroundTimeount:J

    return-void
.end method

.method private writeLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "OPMT"

    const-string v2, "start log."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "persist.sys.opmt.copyion"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v4, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    :goto_0
    iget-object v4, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    const-string v6, "dropbox"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/DropBoxManager;

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x2000

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v9, "ro.build.display.id"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ro.build.fingerprint"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ro.build.version.sdk"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ro.product.model"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "persist.sys.timezone"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "========================================================\n"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "== dumpstate: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build fingerprint: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceTotalMemory: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusMemoryTracker;->getDeviceTotalMemory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ro.build.version.sdk]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ro.product.model]: ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[persist.sys.timezone]: ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current event: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/OnePlusMemoryTracker$tsu;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->getMemoryInfo(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\nDump meminfo took: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "s\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dump info took: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    div-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mCriticalReport:Z

    if-eqz v1, :cond_4

    const-string v1, "critical_low_memory_tracker"

    goto :goto_1

    :cond_4
    const-string v1, "memory_tracker"

    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/OnePlusMemoryTracker;->mCriticalReport:Z

    return-void
.end method


# virtual methods
.method public checkIfNeedReport(IILcom/android/server/am/ProcessRecord;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusMemoryTracker;->reportMemoryDump(II)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusMemoryTracker;->reportNoCache(IILcom/android/server/am/ProcessRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    sget-boolean v0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->reportCritical(Lcom/android/server/am/ProcessRecord;)V

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusMemoryTracker$kth;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusMemoryTracker;->sDebug:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not in recent front uids: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPMT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusMemoryTracker$kth;->zta()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusMemoryTracker$tsu;-><init>(Ljava/lang/String;IIIIZLandroid/app/IApplicationThread;)V

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker;->reportAppEvent(Lcom/android/server/am/OnePlusMemoryTracker$tsu;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusMemoryTracker$kth;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/server/am/OnePlusMemoryTracker$kth;

    invoke-direct {p3, p0, p2}, Lcom/android/server/am/OnePlusMemoryTracker$kth;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/am/OnePlusMemoryTracker$kth;->you()V

    :goto_0
    iget-object p4, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mRecentFrontUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object p2, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLockReport:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mLastReportPackage:Ljava/lang/String;

    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$ssp;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$ssp;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$ssp;

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mHandler:Lcom/android/server/am/OnePlusMemoryTracker$cno;

    sget-wide v1, Lcom/android/server/am/OnePlusMemoryTracker;->sStartReportNoCacheInterval:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.opmt.action.test"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
