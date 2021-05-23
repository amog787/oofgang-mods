.class public Lcom/android/server/wm/OnePlusPerfManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOnePlusPerfManager;
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OnePlusPerfManager$you;,
        Lcom/android/server/wm/OnePlusPerfManager$rtg;,
        Lcom/android/server/wm/OnePlusPerfManager$cno;,
        Lcom/android/server/wm/OnePlusPerfManager$kth;,
        Lcom/android/server/wm/OnePlusPerfManager$tsu;,
        Lcom/android/server/wm/OnePlusPerfManager$ssp;,
        Lcom/android/server/wm/OnePlusPerfManager$sis;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "OPPerf"

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "0"

.field private static final DEFAULT_MODE:I = 0x0

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static final ENABLE_FLAG_MODE_PERFHINT:I = 0x40

.field private static final ENABLE_FLAG_MODE_PERFLOCK:I = 0x80

.field private static final ENABLE_FLAG_MODE_SCHEDTUNE:I = 0x20

.field private static final ENABLE_FLAG_MODE_STARTSPEED:I = 0x10

.field private static final GAMING_CORE_SWITCH_PATH:Ljava/lang/String; = "/sys/module/opchain/parameters/boost_tl"

.field private static final LEVEL_REMOVE:Ljava/lang/String; = "-1"

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final MSG_RESET_CPUSET_SURFACEFLINGER:I = 0x5

.field private static final MSG_SET_ANIMLF_UX_TIMEOUT:I = 0x8

.field private static final MSG_SET_CPUSET_SURFACEFLINGER:I = 0x4

.field private static final MSG_SET_KEYDISPATCHING_UX_TIMEOUT:I = 0x9

.field private static final MSG_SET_LAUNCHER_UX:I = 0x7

.field private static final MSG_STARTSPEED_SCHEDTUNE:I = 0x1

.field private static final MSG_STARTSPEED_SCHEDTUNE_TIMEOUT:I = 0x2

.field private static final MSG_SYSTEMSERVER_UX_TIMEOUT:I = 0x6

.field private static final OPPERF_FILE:Ljava/lang/String; = "/system/etc/opperf.xml"

.field private static final PARAM_PATTERN:Ljava/lang/String; = ","

.field private static final PATH_USB_CONNECTOR:Ljava/lang/String; = "/sys/module/qpnp_smb5/parameters/disable_connector_protect"

.field private static final PATH_USB_CONNECTOR_INTERVAL:Ljava/lang/String; = "/sys/module/qpnp_smb5/parameters/usb_interval_temp"

.field private static final PATH_USB_CONNECTOR_TEMP:Ljava/lang/String; = "/sys/module/qpnp_smb5/parameters/usb_connector_temp"

.field private static final PERF_MODE_PERFHINT:I = 0x6

.field private static final PERF_MODE_PERFLOCK:I = 0x7

.field private static final PERF_MODE_SCHEDTUNE:I = 0x5

.field private static final PERF_MODE_STARTSPEED:I = 0x4

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opperf.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opperf.enable"

.field private static final PROP_ENABLE_BINDERTOP:Ljava/lang/String; = "persist.sys.opperf.enablebindertop"

.field private static final PROP_ENABLE_CPULOCK:Ljava/lang/String; = "persist.sys.opperf.enablecpulock"

.field private static final PROP_NODE_CPULOCK:Ljava/lang/String; = "persist.sys.opperf.cpulocknode"

.field private static final PROP_PROJECT_NAME:Ljava/lang/String; = "ro.boot.project_name"

.field private static final PROP_USB_CONNECTOR:Ljava/lang/String; = "persist.sys.opperf.usb"

.field private static final PROP_USB_CONNECTOR_INTERVAL:Ljava/lang/String; = "persist.sys.opperf.usb_interval"

.field private static final PROP_USB_CONNECTOR_TEMP:Ljava/lang/String; = "persist.sys.opperf.usb_temp"

.field private static final SKIPPED_LEVEL:Ljava/lang/String; = "101"

.field private static final STR_PCCORE_VIDEO_LEVEL:Ljava/lang/String; = "100"

.field public static final TAG:Ljava/lang/String; = "OPPerf"

.field private static final XML_ATTR_CPULOCK_DELAY:Ljava/lang/String; = "cpulockdelay"

.field private static final XML_ATTR_CPULOCK_TIMEOUT:Ljava/lang/String; = "cpulocktimeout"

.field private static final XML_ATTR_DEXOPT:Ljava/lang/String; = "dex2oat"

.field private static final XML_ATTR_DOFRAMEOPT:Ljava/lang/String; = "doframe"

.field private static final XML_ATTR_GAMINGCORE:Ljava/lang/String; = "gamingcore"

.field private static final XML_ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final XML_ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_ATTR_PERF_PARAM:Ljava/lang/String; = "param"

.field private static final XML_ATTR_SCHEDTUNE_DEFAULT:Ljava/lang/String; = "default"

.field private static final XML_ATTR_SCHEDTUNE_PATH:Ljava/lang/String; = "path"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final XML_ATTR_USBCONTECTOR_DISABLE:Ljava/lang/String; = "usb"

.field private static final XML_ATTR_USBCONTECTOR_INTERVAL:Ljava/lang/String; = "usb_interval"

.field private static final XML_ATTR_USBCONTECTOR_TEMP:Ljava/lang/String; = "usb_temp"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_COMPANYLIST:Ljava/lang/String; = "gamingcorecompanylist"

.field private static final XML_TAG_CPULOCK:Ljava/lang/String; = "cpulock"

.field private static final XML_TAG_CPULOCKLIST:Ljava/lang/String; = "cpublacklocklist"

.field private static final XML_TAG_CPULOCKNODE:Ljava/lang/String; = "/main_boost_switch"

.field private static final XML_TAG_GAMELIST:Ljava/lang/String; = "gamingcoregamelist"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PERF:Ljava/lang/String; = "perf"

.field private static final XML_TAG_PERFHINT:Ljava/lang/String; = "perfhint"

.field private static final XML_TAG_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_SCHEDTUNE:Ljava/lang/String; = "schedtune"

.field private static final XML_TAG_SCHEDTUNE_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_SPKG:Ljava/lang/String; = "spkg"

.field public static mDebug:Z = false

.field private static mDefaultTimeout:I = 0x4e20

.field public static mEnable:Z = true

.field public static mEnableBinderTop:Z = true

.field public static mEnableCpuLock:Z = true

.field private static mInstance:Lcom/android/server/wm/OnePlusPerfManager; = null

.field private static mPccoreActivated:Z = false

.field private static projectName:Ljava/lang/String;


# instance fields
.field private final currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private final mAnimLFTimeout:I

.field private mContext:Landroid/content/Context;

.field private mCpuBlackPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCpuLockDelay:I

.field private mCpuLockNode:Ljava/lang/String;

.field private mCpuPerfTimeList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLauncherPid:I

.field private mCurrentSpeedLevel:Ljava/lang/String;

.field private mDefaultCpuLockTimeout:I

.field public mEnableModePerfhint:Z

.field public mEnableModePerflock:Z

.field public mEnableModeSchedtune:Z

.field public mEnableModeStartSpeed:Z

.field private mGuestModeReceiver:Landroid/content/BroadcastReceiver;

.field private mHwuiThreadTid0:I

.field private mHwuiThreadTid1:I

.field private final mKeyDispatchingTimeout:I

.field private mLauncherPid:I

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPerfBoost:Landroid/util/BoostFramework;

.field private mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

.field mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

.field private mPerfLockLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OnePlusPerfManager$tsu;",
            ">;"
        }
    .end annotation
.end field

.field mPerfManagerThread:Landroid/os/HandlerThread;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OnePlusPerfManager$sis;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThreadTid:I

.field private mSchedtuneParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OnePlusPerfManager$cno;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OnePlusPerfManager$ssp;",
            ">;"
        }
    .end annotation
.end field

.field private final mSurafaceFlingerCpusetTimeout:I

.field private mUsbProtectorDisable:Ljava/lang/String;

.field private mUsbProtectorIntervalTemp:Ljava/lang/String;

.field private mUsbProtectorTemp:Ljava/lang/String;

.field private mUxBoostList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field private mWms:Lcom/android/server/wm/WindowManagerService;

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z

.field private suffixListCompany:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixListGame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModePerflock:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModePerfhint:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeSchedtune:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeStartSpeed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    iput-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    sget v3, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultTimeout:I

    const-string v4, ""

    const-string v5, "0"

    invoke-direct {v2, v4, v0, v5, v3}, Lcom/android/server/wm/OnePlusPerfManager$ssp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuBlackPackageList:Ljava/util/List;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuPerfTimeList:Ljava/util/HashMap;

    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuLockDelay:I

    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultCpuLockTimeout:I

    const-string v2, "/main_boost_switch"

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuLockNode:Ljava/lang/String;

    const/16 v3, 0x258

    iput v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSurafaceFlingerCpusetTimeout:I

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mLauncherPid:I

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mRenderThreadTid:I

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid0:I

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid1:I

    iput v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentLauncherPid:I

    const/16 v3, 0x12c

    iput v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mAnimLFTimeout:I

    const/16 v3, 0x1f4

    iput v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mKeyDispatchingTimeout:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUxBoostList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/wm/OnePlusPerfManager$zta;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OnePlusPerfManager$zta;-><init>(Lcom/android/server/wm/OnePlusPerfManager;)V

    iput-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mGuestModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "com.netease."

    const-string v6, "com.pwrd."

    const-string v7, "com.bilibili."

    const-string v8, "com.miHoYo."

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "com.happyelements.AndroidAnimal"

    const-string v6, "com.zlongame.mhmnz"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    iput-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->screenOn:Z

    iput-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string v0, "NA"

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorDisable:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorTemp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorIntervalTemp:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    const-string v1, "persist.sys.opperf.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/wm/OnePlusPerfManager$rtg;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/OnePlusPerfManager$rtg;-><init>(Lcom/android/server/wm/OnePlusPerfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    const-string v1, "persist.sys.opperf.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableCpuLock:Z

    const-string v1, "persist.sys.opperf.enablecpulock"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableCpuLock:Z

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableBinderTop:Z

    const-string v1, "persist.sys.opperf.enablebindertop"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableBinderTop:Z

    const-string v0, "persist.sys.opperf.cpulocknode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuLockNode:Ljava/lang/String;

    sget-object v0, Lcom/android/server/wm/OnePlusPerfManager;->projectName:Ljava/lang/String;

    const-string v1, "ro.boot.project_name"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OnePlusPerfManager;->projectName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->initUsbConnectorProtector()V

    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->readXml()I

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/OnePlusPerfManager;)Landroid/util/BoostFramework;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OnePlusPerfManager;->projectName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/OnePlusPerfManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultTimeout:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->startSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/OnePlusPerfManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->doSetCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/OnePlusPerfManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OnePlusPerfManager;->setThreadToUxInternal(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/OnePlusPerfManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->setAnimLfThreadToUxInternal(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/OnePlusPerfManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OnePlusPerfManager;->setInterceptKeyBeforeDispatchingToUxInternal(IZ)V

    return-void
.end method

.method private acquirePerfForStart(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeStartSpeed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private deciedDoFrameEnable(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENTION!!!\tdeciedDoFrameEnable: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const-string p0, "persist.oneplus.frameopts"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deciedEnableModes(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-enter v0

    and-int/lit16 v1, p1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModePerflock:Z

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModePerfhint:Z

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeSchedtune:Z

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeStartSpeed:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newest switch = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private deciedGamingCoreEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENTION!!!\tdeciedGCEnable: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v0, "/sys/module/opchain/parameters/boost_tl"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "OPPerf"

    const-string p1, "deciedGCEnable failed!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private doSetCpusetOfSurfaceFlinger(Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSetCpusetOfSurfaceFlinger#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const-string v4, "display"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v4, 0x4e28

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    const/16 p1, 0x4e29

    :goto_0
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const-string v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, p1, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const-wide/16 v7, 0x258

    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move v3, v5

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v3

    :goto_2
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string p0, "IO close failed : path="

    const-string v0, ",ex->"

    const-string v1, "OPPerf"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : file not exits :"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    sget-boolean v3, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo path = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p2

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "echo failed : path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_2
    return v2

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw p2
.end method

.method private filterSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v1

    return-object p0

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_4
    :goto_0
    return-object p1
.end method

.method private finishSpeedSchedtune(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OnePlusPerfManager$cno;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/OnePlusPerfManager$cno;->you(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishSpeedSchedtune # level:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " reset failed!!!"

    goto :goto_0

    :cond_0
    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishSpeedSchedtune # level = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishSpeedSchedtune # stp = null : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private forceUpdateOnlineConfigImmediately()V
    .locals 3

    const-string v0, "forceUpdateOnlineConfigImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string v2, "OPPerf"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private getCurrentLauncherPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentLauncherPid:I

    return p0
.end method

.method private getHwuiThread0Id(I)I
    .locals 1

    if-nez p1, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mLauncherPid:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid0:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getSpecialThreadOfLauncher(I)I

    iget p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid0:I

    return p0
.end method

.method private getHwuiThread1Id(I)I
    .locals 1

    if-nez p1, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mLauncherPid:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid1:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getSpecialThreadOfLauncher(I)I

    iget p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid1:I

    return p0
.end method

.method private getInodeIndexPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "/proc/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/inode_index_disabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/android/server/wm/OnePlusPerfManager;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OnePlusPerfManager;->mInstance:Lcom/android/server/wm/OnePlusPerfManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/OnePlusPerfManager;

    invoke-direct {v0}, Lcom/android/server/wm/OnePlusPerfManager;-><init>()V

    sput-object v0, Lcom/android/server/wm/OnePlusPerfManager;->mInstance:Lcom/android/server/wm/OnePlusPerfManager;

    :cond_0
    sget-object v0, Lcom/android/server/wm/OnePlusPerfManager;->mInstance:Lcom/android/server/wm/OnePlusPerfManager;

    return-object v0
.end method

.method private getPkgPerfLock(Ljava/lang/String;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->filterSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OnePlusPerfManager$sis;

    if-eqz p0, :cond_1

    const-string p1, "FST"

    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager$sis;->sis:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p0, p0, Lcom/android/server/wm/OnePlusPerfManager$sis;->you:I

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getRenderThreadId(I)I
    .locals 1

    if-nez p1, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mLauncherPid:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mRenderThreadTid:I

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRenderThreadTid(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mRenderThreadTid:I

    :cond_2
    iget p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mRenderThreadTid:I

    return p0
.end method

.method private getSpecialThreadOfLauncher(I)I
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/task"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "OPPerf"

    if-nez v0, :cond_0

    const-string p0, "getSpecialThreadOfLauncher empty"

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    array-length v4, v0

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v4, :cond_4

    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/task/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1

    goto :goto_2

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v6, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/comm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/server/wm/OnePlusPerfManager;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "hwuiTask0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid0:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSpecialThreadOfLauncher mHwuiThreadTid0 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid0:I

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v8, "hwuiTask1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid1:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSpecialThreadOfLauncher mHwuiThreadTid1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->mHwuiThreadTid1:I

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mLauncherPid:I

    return v5
.end method

.method private initUsbConnectorProtector()V
    .locals 3

    const-string v0, "persist.sys.opperf.usb"

    const-string v1, "NA"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorDisable:Ljava/lang/String;

    const-string v0, "persist.sys.opperf.usb_temp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorTemp:Ljava/lang/String;

    const-string v0, "persist.sys.opperf.usb_interval"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorIntervalTemp:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorDisable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorDisable:Ljava/lang/String;

    const-string v2, "/sys/module/qpnp_smb5/parameters/disable_connector_protect"

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorTemp:Ljava/lang/String;

    const-string v2, "/sys/module/qpnp_smb5/parameters/usb_connector_temp"

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorIntervalTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorIntervalTemp:Ljava/lang/String;

    const-string v1, "/sys/module/qpnp_smb5/parameters/usb_interval_temp"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method private mayPerfRelease()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget-object v1, v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->zta:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget v1, v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mayPerfRelease # : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {p0}, Lcom/android/server/wm/OnePlusPerfManager$ssp;->zta()V

    monitor-exit v0

    return v3

    :cond_0
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mayPerfRelease # release failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget v1, v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget-object v4, v4, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OnePlusPerfManager$cno;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget-object v1, v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/OnePlusPerfManager$cno;->you(Ljava/lang/String;)Z

    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mayPerfRelease # reset SCHEDTUNE # : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {p0}, Lcom/android/server/wm/OnePlusPerfManager$ssp;->zta()V

    monitor-exit v0

    return v3

    :cond_2
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mayPerfRelease # reset SCHEDTUNE # stp = null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public static numberStringToInt(Ljava/lang/String;)I
    .locals 1

    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0
.end method

.method private perfAcquire(Lcom/android/server/wm/OnePlusPerfManager$ssp;I)Z
    .locals 5

    iget p2, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModePerflock:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget v1, v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    if-ne v1, p2, :cond_0

    iget-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget-object p2, p2, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perfAcquire # perflock change #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {p2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->mayPerfRelease()Z

    iget-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OnePlusPerfManager$tsu;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :try_start_2
    iget-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusPerfManager$tsu;->zta()[I

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perfAcquire # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perfAcquire # acquire failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_2
    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perfAcquire failed # pll = null : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeSchedtune:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    if-ne p2, v1, :cond_8

    iget-object v1, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    const-string v4, "100"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    monitor-exit v0

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget v1, v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    if-ne v1, p2, :cond_5

    iget-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget-object p2, p2, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perfAcquire # SCHEDTUNE change # : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->mayPerfRelease()Z

    iget-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OnePlusPerfManager$cno;

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_7

    :try_start_6
    iget-object p2, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/OnePlusPerfManager$cno;->sis(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perfAcquire # set SCHEDTUNE #: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perfAcquire # write schedtune failed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const-string p2, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perfAcquire # write schedtune failed # stp = null : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_1

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->mayPerfRelease()Z

    :goto_2
    if-eqz v2, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you(Lcom/android/server/wm/OnePlusPerfManager$ssp;)V

    :cond_9
    monitor-exit v0

    return v2

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method private readNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "OPPerf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ***ERROR*** Here is what I know: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const-string p0, "empty"

    :goto_2
    return-object p0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw p0
.end method

.method private readXml()I
    .locals 12

    const-string v0, "# readXml"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/opperf.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "# readXml # file not exists"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "perf"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v3, "version"

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "switch"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "timeout"

    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultTimeout:I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "version "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " #switch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " #timeout "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultTimeout:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/wm/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    const-string v1, "pkg"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "OPPerf"

    const-string v3, "# readXml # error # nl = null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_1

    :cond_2
    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "perflock"

    invoke-interface {v5, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    const-string v9, "level"

    invoke-interface {v5, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    new-instance v7, Lcom/android/server/wm/OnePlusPerfManager$sis;

    invoke-direct {v7, v6, v5, v8}, Lcom/android/server/wm/OnePlusPerfManager$sis;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readXml: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_4
    :goto_1
    const-string v1, "spkg"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "OPPerf"

    const-string v3, "# readXml # error spkg# nl = null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    move v3, v2

    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_6

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mode"

    invoke-interface {v5, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "level"

    invoke-interface {v5, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "timeout"

    invoke-interface {v5, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "spkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # level "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " # timeout "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v9, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v10, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-direct {v11, v6, v7, v8, v5}, Lcom/android/server/wm/OnePlusPerfManager$ssp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v9

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_6
    :goto_3
    const-string v1, "perflock"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, "OPPerf"

    const-string v3, "mode perflock is null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    move v3, v2

    :goto_4
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_8

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "level"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    invoke-interface {v5, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perflockMap add : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v8, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    new-instance v9, Lcom/android/server/wm/OnePlusPerfManager$tsu;

    invoke-direct {v9, v5}, Lcom/android/server/wm/OnePlusPerfManager$tsu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :catchall_2
    move-exception p0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_8
    :goto_5
    const-string v1, "schedtune"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    if-nez v0, :cond_9

    const-string p0, "OPPerf"

    const-string v0, "mode schedtune is null!"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_9
    move v1, v2

    :goto_6
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v5, "level"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/android/server/wm/OnePlusPerfManager$cno;

    invoke-direct {v5}, Lcom/android/server/wm/OnePlusPerfManager$cno;-><init>()V

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    const-string v7, "item"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v7, v2

    :goto_7
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_a

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string v9, "path"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "param"

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "default"

    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/wm/OnePlusPerfManager$kth;

    invoke-direct {v11, p0, v9, v10, v8}, Lcom/android/server/wm/OnePlusPerfManager$kth;-><init>(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lcom/android/server/wm/OnePlusPerfManager$cno;->zta(Lcom/android/server/wm/OnePlusPerfManager$kth;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "schedtuneMap add : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v7, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :catchall_3
    move-exception p0

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_b
    :goto_8
    return v4

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# readXml # parse error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPPerf"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x3

    return p0
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolvePerfConfigFromJSON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->mayPerfRelease()Z

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "perflock"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "level"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v7, ""

    if-ne v4, v7, :cond_3

    :cond_2
    const-string v4, "0"

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_6

    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OnePlusPerfManager$sis;

    if-eqz v8, :cond_5

    const-string v9, "-1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iput v6, v8, Lcom/android/server/wm/OnePlusPerfManager$sis;->you:I

    iput-object v4, v8, Lcom/android/server/wm/OnePlusPerfManager$sis;->sis:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v9, Lcom/android/server/wm/OnePlusPerfManager$sis;

    invoke-direct {v9, v5, v6, v4}, Lcom/android/server/wm/OnePlusPerfManager$sis;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolvePerfConfigFromJSON # "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    monitor-exit v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_7
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # switch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_8
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gamingcore"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/OnePlusPerfManager;->deciedGamingCoreEnable(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # GamingCore = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_9
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->setUsbConnectorDisbaled(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # usb = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_a
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb_temp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->setUsbConnectorTemp(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # temp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "usb_interval"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->setUsbConnectorIntervalTemp(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # interval_temp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_c
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "doframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->deciedDoFrameEnable(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # DoFrame = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "timeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultTimeout:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_e
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "spkg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mode"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "level"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "101"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolvePerfConfigFromJSON skip level #  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    const-string v8, "timeout"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v8, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v5, :cond_12

    :try_start_3
    iget-object v9, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    if-eqz v9, :cond_11

    const-string v10, "-1"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_10
    iput v6, v9, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    iput-object v7, v9, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    iput v4, v9, Lcom/android/server/wm/OnePlusPerfManager$ssp;->tsu:I

    goto :goto_5

    :cond_11
    iget-object v9, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v10, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-direct {v10, v5, v6, v7, v4}, Lcom/android/server/wm/OnePlusPerfManager$ssp;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v9, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolvePerfConfigFromJSON # "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    monitor-exit v8

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_13
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "perflock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "level"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/android/server/wm/OnePlusPerfManager$tsu;

    invoke-direct {v6, v4}, Lcom/android/server/wm/OnePlusPerfManager$tsu;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v7, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolvePerfConfigFromJSON #  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    monitor-exit v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_2
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_14
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "schedtune"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    new-instance v4, Lcom/android/server/wm/OnePlusPerfManager$cno;

    invoke-direct {v4}, Lcom/android/server/wm/OnePlusPerfManager$cno;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "level"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "101"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolvePerfConfigFromJSON skip level #  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    goto :goto_a

    :cond_15
    const-string v7, "item"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v7, v0

    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_16

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "path"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "param"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "default"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/wm/OnePlusPerfManager$kth;

    invoke-direct {v11, p0, v9, v10, v8}, Lcom/android/server/wm/OnePlusPerfManager$kth;-><init>(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Lcom/android/server/wm/OnePlusPerfManager$cno;->zta(Lcom/android/server/wm/OnePlusPerfManager$kth;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resolvePerfConfigFromJSON # schedtune, level = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_16
    iget-object v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v7, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolvePerfConfigFromJSON # schedtune, add level "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    monitor-exit v5

    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    :catchall_3
    move-exception p0

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p0

    :cond_17
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gamingcorecompanylist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    monitor-enter v3
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :try_start_a
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    monitor-enter v5
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_c

    :catchall_4
    move-exception p0

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw p0
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_18
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :catchall_5
    move-exception p0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    throw p0

    :cond_19
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gamingcoregamelist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    monitor-enter v3
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    iget-object v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    monitor-enter v5
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget-object v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_e

    :catchall_6
    move-exception p0

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw p0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :cond_1a
    :goto_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :catchall_7
    move-exception p0

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :try_start_14
    throw p0

    :cond_1b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpublacklocklist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuBlackPackageList:Ljava/util/List;

    monitor-enter v3
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :try_start_15
    iget-object v4, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuBlackPackageList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :try_start_16
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_21

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1c

    iget-object v5, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuBlackPackageList:Ljava/util/List;

    monitor-enter v5
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    :try_start_17
    iget-object v6, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuBlackPackageList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    goto :goto_10

    :catchall_8
    move-exception p0

    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :try_start_18
    throw p0
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :cond_1c
    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :catchall_9
    move-exception p0

    :try_start_19
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    throw p0

    :cond_1d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpulock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/OnePlusPerfManager;->mEnableCpuLock:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # mEnableCpuLock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_1e
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpulockdelay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuLockDelay:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # mCpuLockDelay = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_1f
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cpulocktimeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultCpuLockTimeout:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # cpuLockTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_20
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/main_boost_switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCpuLockNode:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePerfConfigFromJSON # mCpuLockNode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_21
    :goto_11
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_22
    const-string p0, "OPPerf"

    const-string p1, "[OnlineConfig] OPPerf updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    goto :goto_13

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] OPPerf Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_12

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] OPPerf JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method

.method private runAppMayWithPerf(Ljava/lang/String;I)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->screenOn:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spi = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " # packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", duration = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->mayPerfRelease()Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/android/server/wm/OnePlusPerfManager;->perfAcquire(Lcom/android/server/wm/OnePlusPerfManager$ssp;I)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private setAnimLfThreadToUxInternal(Z)V
    .locals 1

    const-string p0, "OPPerf"

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p1, :cond_1

    const-string p1, "setAnimLfThreadToUxInternal true"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result p1

    const-string v0, "1"

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p1, :cond_1

    const-string p1, "setAnimLfThreadToUxInternal false"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->get()Lcom/android/server/wm/SurfaceAnimationThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/SurfaceAnimationThread;->getThreadId()I

    move-result p1

    const-string v0, "0"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setInterceptKeyBeforeDispatchingToUxInternal(IZ)V
    .locals 0

    const-string p0, "OPPerf"

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p2, :cond_1

    const-string p2, "setInterceptKeyBeforeDispatchingToUxInternal true"

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p2, :cond_1

    const-string p2, "setInterceptKeyBeforeDispatchingToUxInternal false"

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const-string p2, "0"

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setThreadToUxInternal(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p2, :cond_2

    const-string p2, "display"

    invoke-virtual {p0, p2}, Lcom/android/server/wm/OnePlusPerfManager;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getRenderThreadId(I)I

    move-result p2

    const-string v0, "1"

    invoke-static {p1, p2, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getHwuiThread0Id(I)I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getHwuiThread1Id(I)I

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    invoke-static {p1}, Lcom/oneplus/uifirst/UIFirstUtils;->applyUxThreadLock(I)V

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/oneplus/uifirst/UIFirstUtils;->releaseUxThreadLock(I)V

    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->getCurrentLauncherPid()I

    move-result p2

    const-string v0, "0"

    if-eq p2, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getRenderThreadId(I)I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getHwuiThread0Id(I)I

    move-result p2

    invoke-static {p1, p2, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getHwuiThread1Id(I)I

    move-result p0

    invoke-static {p1, p0, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setUsbConnectorDisbaled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsbConnectorDisbaled: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const-string v0, "persist.sys.opperf.usb"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorDisable:Ljava/lang/String;

    const-string v0, "/sys/module/qpnp_smb5/parameters/disable_connector_protect"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setUsbConnectorIntervalTemp(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsbConnectorIntervalTemp: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const-string v0, "persist.sys.opperf.usb_interval"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorTemp:Ljava/lang/String;

    const-string v0, "/sys/module/qpnp_smb5/parameters/usb_interval_temp"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setUsbConnectorTemp(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUsbConnectorTemp: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const-string v0, "persist.sys.opperf.usb_temp"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUsbProtectorTemp:Ljava/lang/String;

    const-string v0, "/sys/module/qpnp_smb5/parameters/usb_connector_temp"

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic sis(Lcom/android/server/wm/WindowState;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getWindowProcessController(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add to boost list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in pid "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUxBoostList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    const-string v0, "1"

    invoke-static {p0, p1, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startSpeedSchedtune(Ljava/lang/String;)V
    .locals 5

    sget v0, Lcom/android/server/wm/OnePlusPerfManager;->mDefaultTimeout:I

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->tsu:I

    goto :goto_0

    :cond_0
    const-string p1, "0"

    move v4, v0

    move-object v0, p1

    move p1, v4

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSpeedSchedtune # level:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # change TIMEOUT:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OnePlusPerfManager$cno;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/android/server/wm/OnePlusPerfManager$cno;->sis(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startSpeedSchedtune # level = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startSpeedSchedtune # level:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " write failed!!!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "startSpeedSchedtune # stp = null : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private synthetic zta(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public acquirePccore()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OPPerf"

    const-string v1, "acquirePccore"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mPccoreActivated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-boolean p0, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    if-eqz p0, :cond_1

    const-string p0, "OPPerf"

    const-string v0, "PCCORE is already acquired"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    const-string v2, "100"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OnePlusPerfManager$cno;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_4

    const-string v0, "100"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager$cno;->sis(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    sput-boolean v1, Lcom/android/server/wm/OnePlusPerfManager;->mPccoreActivated:Z

    const-string p0, "OPPerf"

    const-string v0, "acquirePccore # set pccore"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string p0, "OPPerf"

    const-string v0, "acquirePccore # write pccore failed"

    goto :goto_0

    :cond_4
    const-string p0, "OPPerf"

    const-string v0, "acquirePccore # write pccore failed # stp = null"

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public acquirePerfForStartSpeed(Ljava/lang/String;Landroid/util/BoostFramework;)Z
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->getPkgPerfLock(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perfLock : boost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    const/16 v2, 0x1081

    invoke-virtual {p2, v2, p1, v0, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    sput-boolean v1, Lcom/android/server/wm/TaskDisplayArea;->mPerfSendTapHint:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->acquirePerfForStart(Ljava/lang/String;)Z

    return v1
.end method

.method public autoAcquireOrRelease(Z)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoAcquireOrRelease("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->screenOn:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    iget-object v0, v0, Lcom/android/server/wm/OnePlusPerfManager$ssp;->zta:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/wm/OnePlusPerfManager;->mayPerfRelease()Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    new-instance p3, Lcom/android/server/wm/tsu;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/tsu;-><init>(Lcom/android/server/wm/OnePlusPerfManager;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getPccoreState()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/wm/OnePlusPerfManager;->mPccoreActivated:Z

    return p0
.end method

.method public getWindowProcessController(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowProcessController;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    :goto_0
    iget v0, p1, Lcom/android/server/wm/Session;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v1, :cond_2

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p1, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 4

    const-string v0, "initOnlineConfig"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    new-instance v2, Lcom/android/server/wm/OnePlusPerfManager$you;

    invoke-direct {v2, p0}, Lcom/android/server/wm/OnePlusPerfManager$you;-><init>(Lcom/android/server/wm/OnePlusPerfManager;)V

    const-string v3, "OPPerf"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->screenOn:Z

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mGuestModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isUsingPccore(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->currentSPI:Lcom/android/server/wm/OnePlusPerfManager$ssp;

    monitor-enter v1

    :try_start_1
    iget-boolean p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mEnableModeSchedtune:Z

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->you:I

    const/4 v2, 0x5

    if-ne p0, v2, :cond_1

    iget-object p0, p1, Lcom/android/server/wm/OnePlusPerfManager$ssp;->sis:Ljava/lang/String;

    const-string p1, "100"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public mayChangeInodeIndex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OnePlusPerfManager$sis;

    if-eqz p1, :cond_1

    const-string v1, "FST"

    iget-object p1, p1, Lcom/android/server/wm/OnePlusPerfManager$sis;->sis:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/wm/OnePlusPerfManager;->getInodeIndexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public myLog(Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "OPPerf"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public releasePccore()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OPPerf"

    const-string v1, "releasePccore"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OnePlusPerfManager;->mPccoreActivated:Z

    if-nez v0, :cond_1

    const-string p0, "OPPerf"

    const-string v0, "PCCORE is already released"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    const-string v1, "100"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OnePlusPerfManager$cno;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    const-string v0, "100"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager$cno;->you(Ljava/lang/String;)Z

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/wm/OnePlusPerfManager;->mPccoreActivated:Z

    const-string p0, "OPPerf"

    const-string v0, "releasePccore # reset PCCORE # : "

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "OPPerf"

    const-string v0, "releasePccore # reset PCCORE # stp = null : "

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public screenFrozenBoost(Z)V
    .locals 5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/rtg;

    invoke-direct {v1, p0}, Lcom/android/server/wm/rtg;-><init>(Lcom/android/server/wm/OnePlusPerfManager;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUxBoostList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCurrentProcState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/oneplus/uifirst/UIFirstUtils;->setUxThread(IILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deboost ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mUxBoostList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

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

.method public setAnimLfThreadToUx()V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/OnePlusPerfManager;->setAnimLfThreadToUxInternal(Z)V

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setAnimThreadToUx(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p1, :cond_1

    const-string p1, "display"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result p1

    const-string v0, "1"

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Lcom/android/server/AnimationThread;->get()Lcom/android/server/AnimationThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AnimationThread;->getThreadId()I

    move-result p1

    const-string v0, "0"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/DisplayThread;->getThreadId()I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCpusetOfSurfaceFlinger(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not allowed to set cpuset of surfaceflinger to: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPPerf"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setInterceptKeyBeforeDispatchingToUx(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/OnePlusPerfManager;->setInterceptKeyBeforeDispatchingToUxInternal(IZ)V

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setSystemServerToUx(Z)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "1"

    invoke-static {p1, v1, v2}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/oneplus/uifirst/UIFirstUtils;->IS_SUPPORT_UIFIRST:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    const-string v0, "0"

    invoke-static {p0, p1, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->setSpecialUxThread(IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setThreadToUx(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "enable"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/wm/OnePlusPerfManager$rtg;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public synthetic tsu(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->sis(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public updateCurrentLauncherPid(ILcom/android/server/am/ActivityManagerService;)V
    .locals 1

    iput p1, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentLauncherPid:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateCurrentLauncherPid mCurrentLauncherPid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/OnePlusPerfManager;->mCurrentLauncherPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPPerf"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/server/wm/OnePlusPerfManager;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string p0, "updateCurrentLauncherPid mAms set"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic you(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->zta(Ljava/lang/String;)V

    return-void
.end method
