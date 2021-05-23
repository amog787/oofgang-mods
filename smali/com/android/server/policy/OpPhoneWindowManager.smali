.class public Lcom/android/server/policy/OpPhoneWindowManager;
.super Lcom/android/server/policy/PhoneWindowManager;
.source ""

# interfaces
.implements Lcom/android/server/policy/IOpPhoneWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OpPhoneWindowManager$wtn;,
        Lcom/android/server/policy/OpPhoneWindowManager$gck;,
        Lcom/android/server/policy/OpPhoneWindowManager$dma;,
        Lcom/android/server/policy/OpPhoneWindowManager$ywr;,
        Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    }
.end annotation


# static fields
.field private static final ACTION_CAPTURE_SCREENSHOT:Ljava/lang/String; = "com.oneplus.voiceassist.TAKE_SCREENSHOT"

.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field private static final BLOCKING_KEY_SET:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final DJI_STAIBILIZER_POWER_SCANCODE:I = 0x17c

.field private static final DOUBLE_TAP_TIMEOUT:I = 0xc8

.field private static final ENG_RESULT_FILE_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/ENG_RESULT"

.field private static final HAS_HW_KEYS:Z

.field private static final INCALL_ACTIVITY:Ljava/lang/String; = "com.android.incallui.InCallActivity"

.field private static final IS_NEW_MISTOUCH_PREVENTION:Z

.field private static final IS_SUPPORT_VIBRATION_INTENSITY:Z

.field private static final KEYS_DEFAULT:I = 0x0

.field private static final KEY_ACTION_APP_SWITCH:I = 0x2

.field private static final KEY_ACTION_ASSIST:I = 0x3

.field private static final KEY_ACTION_BACK:I = 0xd

.field private static final KEY_ACTION_END:I = 0xc

.field private static final KEY_ACTION_EXPAND_NOTIFICATION:I = 0x9

.field private static final KEY_ACTION_HOME:I = 0xc

.field private static final KEY_ACTION_LAST_APP:I = 0x7

.field private static final KEY_ACTION_LAUNCH_CAMERA:I = 0x5

.field private static final KEY_ACTION_MENU:I = 0x1

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_ACCESS_PAGE:I = 0x8

.field protected static final KEY_ACTION_QUICK_PAY:I = 0xb

.field private static final KEY_ACTION_SPLIT_SCREEN:I = 0xa

.field private static final KEY_ACTION_TURN_OFF_SCREEN:I = 0x4

.field private static final KEY_ACTION_VOICE_SEARCH:I = 0x6

.field public static final KEY_BLOCK:Ljava/lang/String; = "keyBlock"

.field private static final KEY_DISABLE_NODE:Ljava/lang/String; = "/proc/touchpanel/key_disable"

.field private static final KEY_DISABLE_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_disable"

.field private static final KEY_LAYOUT_DEFAULT:Ljava/lang/String; = "1"

.field private static final KEY_LAYOUT_SWAP:Ljava/lang/String; = "0"

.field private static final KEY_SWITCH_NODE:Ljava/lang/String; = "/proc/touchpanel/key_switch"

.field private static final KEY_SWITCH_NODE_8996:Ljava/lang/String; = "/proc/s1302/key_rep"

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field static final MSG_CONTROL_MISSTOUCH:I = 0x1

.field static final MSG_RECORD_POWER_KEY:I = 0x2

.field private static final OEM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PKG_H2_LAUNCHER:Ljava/lang/String; = "net.oneplus.h2launcher"

.field private static final PORTRAIT_NON_DETECT_SCALE:F

.field static final RECORD_POWER_KEY_DELAY:I = 0x1388

.field private static final SIDE_GESTURE_EDGE_SCALE:F

.field static final SOURCE_OEM:I = 0x10000000

.field public static final SPECIAL_PARAM:Ljava/lang/String; = "specialParam"

.field private static final TAG:Ljava/lang/String; = "OpPhoneWindowManager"

.field private static final TP_EDGE_LIMIT_PATH:Ljava/lang/String; = "/proc/touchpanel/tpedge_limit_enable"

.field private static mBackKeyPressedTime:J

.field protected static mFingerprintEnrolling:Z

.field protected static mForceHomeEnabled:Z

.field private static mKeyBlocked:Z

.field protected static mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field private static mLockTaskModeEnabled:Z

.field private static mLockforKeySet:Ljava/lang/Object;

.field private static mSpecialParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUnpingCombineKeyPressedTime:J

.field public static sDebug:Z

.field public static sDebugInput:Z

.field public static sDebugKeylock:Z

.field public static sDebugKeyswap:Z


# instance fields
.field private longPressStartTime:J

.field private final mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mAppSwitchKeyConsumed:Z

.field private mAppSwitchKeyDoubleTapPending:Z

.field private mAppSwitchKeyPressed:Z

.field private final mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyDoubleTapPending:Z

.field private mBackKeyPressed:Z

.field final mBgHandler:Landroid/os/Handler;

.field mBroadcastScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

.field private mDoubleTapOnAppSwitchBehavior:I

.field private mDoubleTapOnBackBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field private mDoubleTapOnMenuBehavior:I

.field private mEdgeSwipeStartThreshold:I

.field private mEnableSoftwareKeys:Z

.field private mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

.field mHideNavBar:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field private mHomeKeyConsumed:Z

.field private mHomeKeyDoubleTapPending:Z

.field private mHomeKeyPressed:Z

.field mIsNavIconHide:Z

.field mIsSideEnabled:Z

.field private mKeyLockModeReceiver:Lcom/android/server/policy/OpPhoneWindowManager$wtn;

.field protected mKeysBehavior:I

.field public mLastShowBlockToastTime:J

.field private final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockPatternVibePattern:[J

.field private mLongPressOnAppSwitchBehavior:I

.field private mLongPressOnBackBehavior:I

.field private mLongPressOnHomeBehavior:I

.field private mLongPressOnMenuBehavior:I

.field mLongshotWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mMenuKeyConsumed:Z

.field private mMenuKeyDoubleTapPending:Z

.field private mMenuKeyPressed:Z

.field mMistouchRotation:I

.field private mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationMode:I

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mOpGestureHandler:Lcom/android/server/policy/OpPhoneWindowManager$gck;

.field volatile mPowerKeyLongPressHandled:Z

.field private mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

.field mScreenRotation:I

.field mSensorRotation:I

.field private mSettingsObserver:Lcom/android/server/policy/OpPhoneWindowManager$ywr;

.field mShuttingDown:Z

.field private mThreePointerGestureRegisterd:Z

.field private mThreePointersGestures:Lcom/android/server/policy/ssp;

.field private mUnpinRunnable:Ljava/lang/Runnable;

.field mVibrateOnTouchIntensity:I

.field private final minVibInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    or-int/lit8 v1, v0, 0x0

    sput-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    or-int/lit8 v1, v0, 0x0

    sput-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeylock:Z

    const/4 v1, 0x0

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeyswap:Z

    sget-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->zta:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sput-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->mForceHomeEnabled:Z

    sput-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->mFingerprintEnrolling:Z

    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->HAS_HW_KEYS:Z

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x6f

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->IS_NEW_MISTOUCH_PREVENTION:Z

    const-string v2, "com.oneplus.deskclock"

    const-string v3, "com.android.deskclock"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/OpPhoneWindowManager;->OEM_PACKAGE_LIST:Ljava/util/List;

    new-array v0, v0, [I

    const/16 v2, 0x24

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    const-string v0, "persist.gesture_button.side.edge.scale"

    const/16 v2, 0x2d

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v2

    sput v0, Lcom/android/server/policy/OpPhoneWindowManager;->SIDE_GESTURE_EDGE_SCALE:F

    const-string v0, "persist.portrait_non.detect.scale"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    sput v0, Lcom/android/server/policy/OpPhoneWindowManager;->PORTRAIT_NON_DETECT_SCALE:F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockforKeySet:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager;->BLOCKING_KEY_SET:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpGestureHandler:Lcom/android/server/policy/OpPhoneWindowManager$gck;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mKeysBehavior:I

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->minVibInterval:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->longPressStartTime:J

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/ssp;

    iput-boolean v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mVibrateOnTouchIntensity:I

    sget v2, Lcom/android/server/policy/OpPhoneWindowManager;->SIDE_GESTURE_EDGE_SCALE:F

    const/high16 v3, 0x44870000    # 1080.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mEdgeSwipeStartThreshold:I

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongshotWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$sis;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/OpPhoneWindowManager$sis;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpPhoneWindowManager$tsu;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpPhoneWindowManager$rtg;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$ssp;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpPhoneWindowManager$ssp;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$cno;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpPhoneWindowManager$cno;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$kth;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpPhoneWindowManager$kth;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mShuttingDown:Z

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$igw;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpPhoneWindowManager$igw;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBroadcastScreenshotReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mMenuKeyPressed:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mMenuKeyConsumed:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OpPhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->readConfigurationDependentBehaviors()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$gck;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpGestureHandler:Lcom/android/server/policy/OpPhoneWindowManager$gck;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/ssp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/ssp;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$dma;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/policy/OpPhoneWindowManager;)Lcom/android/server/policy/OpPhoneWindowManager$ywr;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OpPhoneWindowManager$ywr;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->IS_NEW_MISTOUCH_PREVENTION:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/OpPhoneWindowManager;)[B
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->getProductLineTestFlag()[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/policy/OpPhoneWindowManager;IB)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->setProductLineTestFlagExtraByte(IB)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/OpPhoneWindowManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/policy/OpPhoneWindowManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mEnableSoftwareKeys:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mEnableSoftwareKeys:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/policy/OpPhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    return p1
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private collapsePanels()V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    const-string v1, "OpPhoneWindowManager"

    if-eqz v0, :cond_0

    const-string v0, " ++++++++++ collapsePanels() "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p0, :cond_2

    const-string p0, "Unable to get StatusBarService !"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to collapse notification panel, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private collectAssistantEvent(II)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAssistantData(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private expandNotificationsPanel()V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    const-string v1, "OpPhoneWindowManager"

    if-eqz v0, :cond_0

    const-string v0, " ++++++++++ expandNotificationPanel() "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez p0, :cond_2

    const-string p0, "Unable to get StatusBarService !"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to expand notification panel, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getDefaultBackHandlingCode(Z)I
    .locals 0

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->vju(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneModeController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RecentTaskInfo;

    return-object p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getProductLineTestFlag()[B
    .locals 6

    const-string p0, "getProductLineTestFlag IOException while close : "

    const-string v0, "OpPhoneWindowManager"

    const/16 v1, 0x80

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    const-string v5, "r"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProductLineTestFlag FileNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProductLineTestFlag IOException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    throw v1

    :cond_0
    :goto_4
    move-object v2, v1

    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProductLineTestFlag result[] = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/server/policy/OpPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private hasInComingCall()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.incallui.InCallActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ignoreKeyCustomization()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz p0, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1b

    if-ge p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRecentKeyVisible()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "swipe_up_to_switch_apps_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private launchCameraAction()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    const/16 v0, 0xb

    invoke-interface {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    return-void
.end method

.method private launchQuickAccessPage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/OpPhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.oneplus.h2launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private putDeviceToSleep()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPhoneWindowManager"

    const-string v1, " ++++++++++ putDeviceToSleep() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v2, "key_home_long_press_action"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    if-le v1, v2, :cond_1

    :cond_0
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e005b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_home_double_tap_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v1, :cond_2

    if-le v1, v2, :cond_3

    :cond_2
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x5090018

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_menu_long_press_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnMenuBehavior:I

    if-ltz v1, :cond_4

    if-le v1, v2, :cond_5

    :cond_4
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnMenuBehavior:I

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x509000d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_menu_double_tap_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    if-ltz v1, :cond_6

    if-le v1, v2, :cond_7

    :cond_6
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnMenuBehavior:I

    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x5090017

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_back_long_press_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-ltz v1, :cond_8

    if-le v1, v2, :cond_9

    :cond_8
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnBackBehavior:I

    :cond_9
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x509000c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_back_double_tap_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-ltz v1, :cond_a

    if-le v1, v2, :cond_b

    :cond_a
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    :cond_b
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x5090016

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_app_switch_long_press_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-ltz v1, :cond_c

    if-le v1, v2, :cond_d

    :cond_c
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    :cond_d
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x509000b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const-string v4, "key_app_switch_double_tap_action"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-ltz v0, :cond_e

    if-le v0, v2, :cond_f

    :cond_e
    iput v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    :cond_f
    return-void
.end method

.method private resolveCurrentLauncherPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static setKeyLocks(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setKeyLocks caller is not system uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", return"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpPhoneWindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockforKeySet:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_6

    :try_start_1
    instance-of v1, p0, [Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager;->BLOCKING_KEY_SET:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    check-cast p0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_7

    aget-object v3, p0, v2

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyBlock"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    array-length v4, v3

    const/4 v7, 0x3

    if-ge v4, v7, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_1
    array-length v9, v3

    if-ge v8, v9, :cond_2

    aget-object v9, v3, v8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/android/server/policy/OpPhoneWindowManager;->BLOCKING_KEY_SET:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    const-string v4, "specialParam"

    aget-object v7, v3, v1

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    array-length v4, v3

    if-ge v4, v5, :cond_4

    monitor-exit v0

    return-void

    :cond_4
    sget-object v4, Lcom/android/server/policy/OpPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    aget-object v3, v3, v6

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    sget-object p0, Lcom/android/server/policy/OpPhoneWindowManager;->BLOCKING_KEY_SET:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    sget-object p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSpecialParams:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private setProductLineTestFlag([B)Z
    .locals 9

    const-string p0, "setProductLineTestFlag IOException while close : "

    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProductLineTestFlag data[] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/policy/OpPhoneWindowManager;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpPhoneWindowManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    array-length v4, p1

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v8, "rws"

    invoke-direct {v7, v1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProductLineTestFlag IllegalArgumentException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setProductLineTestFlag FileNotFoundException"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move p0, v5

    goto :goto_6

    :catch_2
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setProductLineTestFlag IOException"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :goto_3
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    throw p1

    :cond_1
    :goto_5
    move p0, v2

    :goto_6
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0, v5, v2}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReadable "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0

    :cond_3
    :goto_7
    const-string p0, "data is invalid!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setProductLineTestFlagExtraByte(IB)Z
    .locals 7

    const-string v0, "setProductLineTestFlagExtraByte IOException while close : "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProductLineTestFlag index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpPhoneWindowManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/ENG_RESULT"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    if-ltz p1, :cond_4

    const/16 v5, 0x80

    if-lt p1, v5, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    new-array v0, v5, [B

    aput-byte p2, v0, p1

    invoke-direct {p0, v0}, Lcom/android/server/policy/OpPhoneWindowManager;->setProductLineTestFlag([B)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v5, "rws"

    invoke-direct {v1, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object p0, v1

    goto :goto_2

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProductLineTestFlagExtraByte IllegalArgumentException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_3
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProductLineTestFlagExtraByte FileNotFoundException"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz p0, :cond_3

    int-to-long v5, p1

    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move v4, p1

    goto :goto_6

    :catch_4
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_5
    move-exception p1

    :try_start_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProductLineTestFlagExtraByte IOException"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_6

    :catch_6
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :goto_4
    :try_start_6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    :catch_7
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    throw p1

    :cond_3
    :goto_6
    return v4

    :cond_4
    :goto_7
    const-string p0, "index is invalid!"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static switchDynamicLog(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    sput-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " change PhoneWindowManager log to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPhoneWindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sput-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    sput-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    sput-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeylock:Z

    sput-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugKeyswap:Z

    :goto_0
    return-void
.end method

.method private switchToLastApp(Landroid/content/Context;I)Z
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->switchToLastAppInternal(Landroid/content/Context;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "OpPhoneWindowManager"

    const-string p1, "Could not switch to last app"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private switchToLastAppInternal(Landroid/content/Context;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->getLastTask(Landroid/content/Context;I)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p2

    iget v0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    const/4 v1, 0x1

    if-gez v0, :cond_1

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->affiliatedTaskId:I

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I

    return v1

    :cond_1
    sget-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "switching to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPhoneWindowManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private toggleSplitScreen()V
    .locals 1

    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    goto :goto_0

    :cond_0
    const-string p0, "OpPhoneWindowManager"

    const-string v0, "Failed to get StatusBarManagerService"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method cancelPendingPowerKeyAction()V
    .locals 0

    invoke-static {}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->cancelPendingPowerKeyAction()V

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    return-void
.end method

.method public finishedGoingToSleep(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/OnePlusPerfManager;->autoAcquireOrRelease(Z)Z

    invoke-static {}, Lcom/android/server/am/cjf;->lqr()Lcom/android/server/am/cjf;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/am/cjf;->lqr()Lcom/android/server/am/cjf;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/am/cjf;->w(Z)V

    :cond_0
    invoke-static {v0}, Lcom/android/server/am/OpBGFrozenInjector;->screenStateChangedEvent(Z)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->gwm()V

    :cond_2
    return-void
.end method

.method public finishedWakingUp(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(I)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->autoAcquireOrRelease(Z)Z

    invoke-static {}, Lcom/android/server/am/cjf;->lqr()Lcom/android/server/am/cjf;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/cjf;->lqr()Lcom/android/server/am/cjf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/cjf;->w(Z)V

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OpBGFrozenInjector;->screenStateChangedEvent(Z)V

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeServiceInjector;->updateKeepHighVsync(Z)V

    :cond_1
    return-void
.end method

.method public forceShuttingDownPortait()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mShuttingDown:Z

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method protected getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, ""

    const-string v1, "OpPhoneWindowManager"

    if-nez p1, :cond_0

    const-string p0, "getDefaultHomePackageName: could not get package manager"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/16 v2, 0x80

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getDefaultHomePackageName: could not get ResolveInfo"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isDefaultHome] default home: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 7

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVibrationEffect : effectId( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    sget-boolean p1, Lcom/android/server/policy/OpPhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz p1, :cond_1

    new-array p1, v1, [I

    const/16 v1, 0x61

    aput v1, p1, v2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternVibePattern:[J

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v3, 0x3ea

    if-ne p1, v3, :cond_3

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternVibePattern:[J

    invoke-static {p0, v0}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v0, 0x0

    if-nez p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/policy/OpPhoneWindowManager;->longPressStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xc8

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    return-object v0

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->longPressStartTime:J

    :cond_5
    new-array v1, v1, [I

    const/16 v3, 0xc0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v3, 0x4

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_7

    const/16 v1, 0xe

    if-eq p1, v1, :cond_7

    const/4 v1, 0x6

    if-eq p1, v1, :cond_7

    const/4 v1, 0x7

    if-eq p1, v1, :cond_6

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    goto :goto_0

    :cond_6
    return-object v0

    :cond_7
    invoke-static {v2}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_8
    :goto_0
    if-ne p1, v3, :cond_9

    const/4 p0, 0x2

    invoke-static {p0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    new-instance p2, Lcom/android/server/policy/OpPhoneWindowManager$dma;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/server/policy/OpPhoneWindowManager$dma;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;Lcom/android/server/policy/OpPhoneWindowManager$you;)V

    iput-object p2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    new-instance p2, Lcom/android/server/policy/OpPhoneWindowManager$ywr;

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    invoke-direct {p2, p0, v0}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/OpPhoneWindowManager$ywr;

    invoke-virtual {p2}, Lcom/android/server/policy/OpPhoneWindowManager$ywr;->zta()V

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    const/4 p2, 0x1

    new-array v0, p2, [I

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$wtn;

    invoke-direct {v0, p0, p3}, Lcom/android/server/policy/OpPhoneWindowManager$wtn;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;Lcom/android/server/policy/OpPhoneWindowManager$you;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OpPhoneWindowManager$wtn;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/server/policy/OpPhoneWindowManager$wtn;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    :cond_1
    new-array v0, p2, [I

    const/16 v1, 0xc

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThreePointersThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/policy/OpPhoneWindowManager$gck;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/OpPhoneWindowManager$gck;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpGestureHandler:Lcom/android/server/policy/OpPhoneWindowManager$gck;

    new-instance v0, Lcom/android/server/policy/ssp;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mOpGestureHandler:Lcom/android/server/policy/OpPhoneWindowManager$gck;

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/ssp;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/ssp;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1, v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    iput-boolean p2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mThreePointerGestureRegisterd:Z

    :cond_2
    sget-boolean v0, Lcom/android/server/policy/OpScreenshotImprovementInjector;->IS_SCREENSHOT_IMPROVEMENT_ENABLED:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/policy/OpScreenshotImprovementInjector;->init()V

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    :cond_3
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v0, v1, v3}, Lcom/android/server/policy/OpQuickPayInjector;->initOpQuickPay(Landroid/content/Context;Landroid/os/Handler;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    invoke-static {v0, v1, p0}, Lcom/android/server/policy/OpPowerKeyLaunchInjector;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    invoke-static {v0, v1, p0}, Lcom/android/server/policy/OpShutdownChordManagerInjector;->init(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/policy/PhoneWindowManager;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070086

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x2

    const-string v4, "vibrate_on_touch_intensity"

    invoke-static {v1, v4, p2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mVibrateOnTouchIntensity:I

    array-length v3, v0

    add-int/2addr v3, p2

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockPatternVibePattern:[J

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, -0x1

    int-to-long v4, v1

    aput-wide v4, v3, v2

    array-length v1, v0

    invoke-static {v0, v2, v3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.oneplus.voiceassist.TAKE_SCREENSHOT"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBroadcastScreenshotReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "oneplus.permission.VOICE_SCREENSHOT"

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.USER_SWITCHED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/OnePlusPerfManager;->setInterceptKeyBeforeDispatchingToUx(I)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_0

    move v7, v8

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-ne v10, v8, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_2

    move v3, v8

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_3

    move v12, v8

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    const/high16 v13, 0x20000000

    and-int v13, p3, v13

    if-eqz v13, :cond_4

    move v13, v8

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_5

    move v14, v8

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    :goto_5
    const/4 v15, 0x4

    if-ne v4, v15, :cond_6

    move/from16 v16, v8

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    const/4 v15, 0x3

    if-ne v4, v15, :cond_7

    move/from16 v17, v8

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    :goto_7
    const/16 v15, 0xbb

    if-ne v4, v15, :cond_8

    move v15, v8

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    :goto_8
    const/16 v9, 0x1a

    if-ne v4, v9, :cond_9

    move v9, v8

    goto :goto_9

    :cond_9
    const/4 v9, 0x0

    :goto_9
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v8

    move/from16 v18, v12

    if-eqz v8, :cond_a

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    goto :goto_a

    :cond_a
    const/4 v8, 0x0

    :goto_a
    if-eqz v8, :cond_b

    iget v12, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v19, v14

    goto :goto_b

    :cond_b
    move/from16 v19, v14

    const/4 v12, 0x0

    :goto_b
    const/16 v14, 0x18

    sget-boolean v4, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " ++++++++++ interceptKeyBeforeDispatching "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", interactive = "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v13, "OpPhoneWindowManager"

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v4, 0x1

    new-array v13, v4, [I

    const/16 v4, 0xa

    const/4 v14, 0x0

    aput v4, v13, v14

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_10

    sget-object v4, Lcom/android/server/policy/OpPhoneWindowManager$zta;->zta:[I

    sget-object v20, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v4, v4, v20

    const/4 v13, 0x3

    if-eq v4, v13, :cond_d

    goto :goto_c

    :cond_d
    if-nez v17, :cond_e

    if-nez v16, :cond_e

    if-nez v15, :cond_e

    if-eqz v9, :cond_10

    :cond_e
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++++++++++ interceptKeyBeforeDispatching(): cancelling event due to POWER_HOME key lock mode, event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_10
    :goto_c
    const-wide/16 v13, -0x1

    if-eqz v15, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_11

    return-wide v13

    :cond_11
    sget-boolean v4, Lcom/android/server/policy/OpPhoneWindowManager;->mLockTaskModeEnabled:Z

    const-wide/16 v13, 0xc8

    if-eqz v4, :cond_1b

    if-eqz v7, :cond_17

    if-lez v5, :cond_12

    const-wide/16 v21, -0x1

    return-wide v21

    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v23

    if-eqz v16, :cond_13

    if-nez v5, :cond_13

    sput-wide v23, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressedTime:J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_d

    :cond_13
    const/4 v4, 0x1

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v9

    if-eqz v9, :cond_14

    if-eqz v15, :cond_15

    if-nez v5, :cond_15

    sput-wide v23, Lcom/android/server/policy/OpPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_e

    :cond_14
    if-eqz v17, :cond_15

    if-nez v5, :cond_15

    sput-wide v23, Lcom/android/server/policy/OpPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    :cond_15
    :goto_e
    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    if-eqz v4, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isRecentKeyVisible()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-eqz v4, :cond_1b

    goto :goto_f

    :cond_16
    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    if-eqz v4, :cond_1b

    :goto_f
    sget-wide v23, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressedTime:J

    sget-wide v25, Lcom/android/server/policy/OpPhoneWindowManager;->mUnpingCombineKeyPressedTime:J

    sub-long v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(J)J

    move-result-wide v23

    cmp-long v4, v23, v13

    if-gez v4, :cond_1b

    iget-object v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v9, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v4, v9, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyBlocked:Z

    goto :goto_11

    :cond_17
    const/4 v4, 0x0

    if-eqz v16, :cond_18

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_10

    :cond_18
    if-eqz v15, :cond_19

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    goto :goto_10

    :cond_19
    if-eqz v17, :cond_1a

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    :cond_1a
    :goto_10
    iget-object v9, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v13, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mUnpinRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-boolean v4, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyBlocked:Z

    goto :goto_12

    :cond_1b
    :goto_11
    const/4 v4, 0x0

    :goto_12
    sget-boolean v9, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyBlocked:Z

    if-eqz v9, :cond_20

    if-eqz v10, :cond_1e

    if-eqz v16, :cond_1c

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    goto :goto_13

    :cond_1c
    if-eqz v15, :cond_1d

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    :cond_1d
    :goto_13
    iget-boolean v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    if-nez v1, :cond_1e

    iget-boolean v0, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    if-nez v0, :cond_1e

    sput-boolean v4, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyBlocked:Z

    :cond_1e
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_1f

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "key event is canceled because it is blocked because of screen pin. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_20
    const/16 v4, 0x7d9

    if-eqz v17, :cond_30

    if-eqz v7, :cond_29

    if-eqz v8, :cond_25

    if-ne v12, v4, :cond_22

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_22
    array-length v4, v2

    const/4 v7, 0x0

    :goto_14
    if-ge v7, v4, :cond_25

    aget v8, v2, v7

    if-ne v12, v8, :cond_24

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled cause window type is blocking it, event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    :cond_25
    if-nez v5, :cond_26

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    if-eqz v4, :cond_28

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    iget-object v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v2, 0x4

    :goto_15
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_16

    :cond_26
    if-eqz v3, :cond_28

    if-nez v6, :cond_28

    iget-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    if-nez v2, :cond_28

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v2, :cond_28

    const-string v2, "sys.debug.watchdog"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-eqz v2, :cond_27

    sget-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v2, :cond_28

    :cond_27
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    const-string v2, "Key Long Press"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x3

    goto :goto_15

    :cond_28
    :goto_16
    const-wide/16 v2, -0x1

    return-wide v2

    :cond_29
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyPressed:Z

    iget-boolean v5, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    if-eqz v5, :cond_2a

    iput-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyConsumed:Z

    return-wide v2

    :cond_2a
    if-eqz v11, :cond_2c

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz v0, :cond_2b

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "Ignoring HOME; event canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-wide v2

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v4

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->hasInComingCall()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2

    :cond_2d
    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v2, :cond_2f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-boolean v2, Lcom/android/server/policy/OpPhoneWindowManager;->mForceHomeEnabled:Z

    if-eqz v2, :cond_2f

    :cond_2e
    iget-object v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeKeyDoubleTapPending:Z

    iget-object v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v0, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v9, -0x1

    return-wide v9

    :cond_2f
    const-wide/16 v9, -0x1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-wide v9

    :cond_30
    const-wide/16 v9, -0x1

    if-eqz v16, :cond_3c

    if-eqz v19, :cond_32

    if-nez v18, :cond_32

    iget-boolean v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v1, :cond_31

    return-wide v9

    :cond_31
    invoke-direct {v0, v7}, Lcom/android/server/policy/OpPhoneWindowManager;->getDefaultBackHandlingCode(Z)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_32
    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-nez v2, :cond_33

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-nez v2, :cond_33

    invoke-direct {v0, v7}, Lcom/android/server/policy/OpPhoneWindowManager;->getDefaultBackHandlingCode(Z)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-direct {v0, v7}, Lcom/android/server/policy/OpPhoneWindowManager;->getDefaultBackHandlingCode(Z)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_34
    if-eqz v7, :cond_37

    if-nez v5, :cond_35

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    iget-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    if-eqz v3, :cond_36

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    iget-object v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    const/4 v2, 0x5

    :goto_17
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_18

    :cond_35
    if-eqz v3, :cond_36

    iget-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    if-nez v2, :cond_36

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v2, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-nez v2, :cond_36

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    const-string v2, "Key Long Press"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnBackBehavior:I

    const/4 v2, 0x6

    goto :goto_17

    :cond_36
    :goto_18
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_37
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyPressed:Z

    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v4, :cond_38

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    return-wide v1

    :cond_38
    if-eqz v11, :cond_3a

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz v0, :cond_39

    const-string v0, "OpPhoneWindowManager"

    const-string v3, "Ignoring BACK; event canceled."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-wide v1

    :cond_3a
    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnBackBehavior:I

    if-eqz v1, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyDoubleTapPending:Z

    iget-object v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v0, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mBackDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v1, -0x1

    return-wide v1

    :cond_3b
    const-wide/16 v1, -0x1

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    return-wide v1

    :cond_3c
    if-eqz v15, :cond_47

    if-eqz v8, :cond_3e

    if-ne v12, v4, :cond_3e

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++++++++++ interceptKeyBeforeDispatching(): event is cancelled due to keyguard showing, event = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpPhoneWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_3e
    if-eqz v7, :cond_41

    if-nez v5, :cond_3f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    if-eqz v4, :cond_40

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    iget-object v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    const/4 v2, 0x7

    :goto_19
    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpPhoneWindowManager;->collectAssistantEvent(II)V

    goto :goto_1a

    :cond_3f
    if-eqz v3, :cond_40

    iget-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-nez v2, :cond_40

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    if-eqz v2, :cond_40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v2

    if-nez v2, :cond_40

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    iput-boolean v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    const-string v2, "Key Long Press"

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    iget v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongPressOnAppSwitchBehavior:I

    const/16 v2, 0x8

    goto :goto_19

    :cond_40
    :goto_1a
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_41
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyPressed:Z

    iget-boolean v4, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v4, :cond_42

    iput-boolean v3, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    return-wide v1

    :cond_42
    if-eqz v11, :cond_44

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz v0, :cond_43

    const-string v0, "OpPhoneWindowManager"

    const-string v3, "Ignoring APP_SWITCH; event canceled."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-wide v1

    :cond_44
    iget v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mDoubleTapOnAppSwitchBehavior:I

    if-eqz v1, :cond_45

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->ignoreKeyCustomization()Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v2, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyDoubleTapPending:Z

    iget-object v1, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object v0, v0, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_45
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "Drop APP_SWITCH key due to animation is on-going"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_46
    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    :goto_1b
    monitor-exit v2

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_47
    invoke-super/range {p0 .. p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x40

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v7

    :goto_2
    const/high16 v10, 0x20000000

    and-int v10, p2, v10

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_3

    :cond_3
    move v10, v7

    :goto_3
    const/4 v11, 0x4

    if-ne v3, v11, :cond_4

    move v11, v6

    goto :goto_4

    :cond_4
    move v11, v7

    :goto_4
    const/4 v12, 0x3

    if-ne v3, v12, :cond_5

    move v12, v6

    goto :goto_5

    :cond_5
    move v12, v7

    :goto_5
    const/16 v13, 0xbb

    if-ne v3, v13, :cond_6

    move v13, v6

    goto :goto_6

    :cond_6
    move v13, v7

    :goto_6
    const/high16 v14, 0x10000000

    and-int/2addr v4, v14

    if-eqz v4, :cond_7

    move v4, v6

    goto :goto_7

    :cond_7
    move v4, v7

    :goto_7
    const/16 v14, 0x18

    const/16 v15, 0x19

    sget-boolean v16, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    const-string v14, "OpPhoneWindowManager"

    if-eqz v16, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ++++++++++ interceptKeyBeforeQueueing(): event = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", interactive = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-nez v6, :cond_9

    return v7

    :cond_9
    const/16 v6, 0x1a

    if-ne v3, v6, :cond_a

    const/4 v15, 0x1

    goto :goto_8

    :cond_a
    move v15, v7

    :goto_8
    if-eqz v15, :cond_d

    const/4 v15, 0x2

    if-eqz v5, :cond_b

    iput-boolean v7, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    iget-object v6, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v6, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/4 v15, 0x1

    iput v15, v6, Landroid/os/Message;->arg1:I

    iget-object v15, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    move/from16 v17, v8

    const-wide/16 v7, 0x1388

    invoke-virtual {v15, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_9
    move/from16 v18, v4

    move v15, v5

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_b

    :cond_b
    move/from16 v17, v8

    iget-boolean v6, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    if-nez v6, :cond_c

    iget-object v6, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v6, v15}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_9

    :cond_c
    iget-object v6, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v6, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/4 v7, 0x0

    iput v7, v6, Landroid/os/Message;->arg1:I

    iget-object v8, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    move/from16 v18, v4

    move v15, v5

    const-wide/16 v4, 0x0

    invoke-virtual {v8, v6, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    :cond_d
    move/from16 v18, v4

    move v15, v5

    move/from16 v17, v8

    :goto_a
    const/4 v4, 0x1

    :goto_b
    new-array v5, v4, [I

    const/16 v4, 0xa

    aput v4, v5, v7

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/android/server/policy/OpPhoneWindowManager$zta;->zta:[I

    sget-object v5, Lcom/android/server/policy/OpPhoneWindowManager;->mKeyLockMode:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_e

    goto/16 :goto_c

    :cond_e
    const-string v0, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to BACK_SWITCH key lock mode."

    if-nez v9, :cond_11

    if-nez v11, :cond_f

    if-eqz v13, :cond_11

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-nez v4, :cond_11

    sget-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v1, :cond_10

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_11
    if-nez v9, :cond_1b

    if-eqz v12, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-boolean v4, Lcom/android/server/policy/OpPhoneWindowManager;->mForceHomeEnabled:Z

    if-nez v4, :cond_1b

    sget-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v1, :cond_12

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v0, 0x0

    return v0

    :pswitch_1
    if-nez v9, :cond_1b

    if-nez v11, :cond_13

    if-nez v12, :cond_13

    if-eqz v13, :cond_1b

    :cond_13
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_14

    const-string v0, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to FOOT key lock mode."

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v0, 0x0

    return v0

    :pswitch_2
    const/4 v0, 0x0

    if-nez v9, :cond_1b

    if-eqz v12, :cond_1b

    sget-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v1, :cond_15

    const-string v1, " ++++++++++ interceptKeyBeforeQueueing(): cancelling event due to HOME key lock mode."

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v0

    :pswitch_3
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_16

    const-string v0, " ++++++++++ interceptKeyBeforeQueueing(): return 1 due to POWER/POWER_HOME key lock mode."

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    const/16 v0, 0x19

    if-ne v3, v0, :cond_17

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_18

    :cond_17
    const/16 v0, 0x18

    if-ne v3, v0, :cond_19

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_19

    :cond_18
    if-nez v15, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ++++++++++ interceptKeyBeforeQueueing(): reset volume key:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    :cond_19
    const/16 v0, 0x1a

    if-ne v3, v0, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/OpPhoneWindowManager;->cancelPendingPowerKeyAction()V

    :cond_1a
    const/4 v0, 0x1

    return v0

    :pswitch_4
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_1b

    const-string v0, " ++++++++++ interceptKeyBeforeQueueing(): dispatching event due to NORMAL key lock mode."

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_c
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->mFingerprintEnrolling:Z

    if-eqz v0, :cond_1d

    if-nez v9, :cond_1d

    if-nez v12, :cond_1c

    if-nez v11, :cond_1c

    if-eqz v13, :cond_1d

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1d
    const/4 v0, 0x0

    if-nez v15, :cond_21

    const-string v4, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event because already consumed, event = "

    if-eqz v11, :cond_1f

    iget-boolean v5, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v5, :cond_1f

    iput-boolean v0, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mBackKeyConsumed:Z

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const/4 v0, 0x0

    return v0

    :cond_1f
    if-eqz v13, :cond_21

    iget-boolean v5, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    if-eqz v5, :cond_21

    iput-boolean v0, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mAppSwitchKeyConsumed:Z

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const/4 v0, 0x0

    return v0

    :cond_21
    if-nez v9, :cond_22

    and-int/lit8 v0, p2, -0x3

    move v4, v0

    goto :goto_d

    :cond_22
    move/from16 v4, p2

    :goto_d
    if-nez v10, :cond_25

    if-nez v9, :cond_27

    if-nez v12, :cond_23

    if-nez v11, :cond_23

    if-eqz v13, :cond_27

    :cond_23
    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ++++++++++ interceptKeyBeforeQueueing(): ignoring event, display not interactive, event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 v0, 0x0

    return v0

    :cond_25
    if-nez v9, :cond_27

    if-nez v12, :cond_26

    if-nez v11, :cond_26

    if-eqz v13, :cond_27

    :cond_26
    if-nez v17, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_27

    if-nez v18, :cond_27

    const-string v0, "Virtual key press"

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    goto :goto_e

    :cond_27
    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_e
    const/16 v0, 0x86

    if-eq v3, v0, :cond_28

    goto :goto_f

    :cond_28
    new-array v0, v5, [I

    const/16 v3, 0xe

    aput v3, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    if-nez v10, :cond_2a

    iget-object v0, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_2a

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->c(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    iget-object v0, v1, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->oxb(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebugInput:Z

    if-eqz v0, :cond_29

    const-string v0, " ++++++++++ interceptKeyBeforeQueueing(): event is a gesture, handled by DeviceKeyHandler."

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2a
    :goto_f
    sget-boolean v0, Lcom/android/server/policy/OpQuickPayInjector;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move v6, v15

    invoke-static {v2, v6, v10, v0, v3}, Lcom/android/server/policy/OpQuickPayInjector;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)I

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x0

    return v0

    :cond_2b
    move v6, v15

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v0

    const/16 v3, 0x17c

    if-ne v0, v3, :cond_2f

    if-eqz v6, :cond_2f

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    const-string v3, ""

    if-eqz v0, :cond_2d

    iget-object v5, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_2d

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_2d
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/OpPhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "com.oneplus.camera"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_2e

    if-eqz v0, :cond_2f

    :cond_2e
    if-nez v3, :cond_2f

    const/4 v0, 0x5

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "cannot getFocusedStackId"

    invoke-static {v14, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    invoke-super {v1, v2, v4}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isGestureButtonEnabled()Z
    .locals 1

    iget p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mNavigationMode:I

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureButtonRegion(II)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getCurrentUserResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10501ae

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    if-eqz v6, :cond_1

    iget v6, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    sget v6, Lcom/android/server/policy/OpPhoneWindowManager;->SIDE_GESTURE_EDGE_SCALE:F

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mEdgeSwipeStartThreshold:I

    new-instance v0, Landroid/graphics/Region;

    sub-int v4, v3, v4

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Region;

    int-to-float v6, v3

    sget v7, Lcom/android/server/policy/OpPhoneWindowManager;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iget v8, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mEdgeSwipeStartThreshold:I

    invoke-direct {v4, v1, v7, v8, v3}, Landroid/graphics/Region;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Region;

    iget p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mEdgeSwipeStartThreshold:I

    sub-int p0, v2, p0

    sget v7, Lcom/android/server/policy/OpPhoneWindowManager;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v1, p0, v6, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v0, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v4, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    new-instance p0, Landroid/graphics/Region;

    sub-int v0, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    new-instance p0, Landroid/graphics/Region;

    invoke-direct {p0, v1, v1, v4, v3}, Landroid/graphics/Region;-><init>(IIII)V

    goto :goto_0

    :cond_3
    new-instance p0, Landroid/graphics/Region;

    sub-int v0, v3, v4

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/graphics/Region;-><init>(IIII)V

    :goto_0
    sget-object v0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v5, p0, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :goto_1
    invoke-virtual {v5, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    sget-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "GestureButton: isGestureButtonRegion gestureRegion="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPhoneWindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0
.end method

.method public isGestureButtonWithoutHideBarEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHideNavBar:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureSideEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mIsSideEnabled:Z

    return p0
.end method

.method public isNavIconHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mIsNavIconHide:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShuttingDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mShuttingDown:Z

    return p0
.end method

.method protected launchVoiceAssistAction()V
    .locals 3

    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "No activity to handle assist long press action."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public notifyLockTaskMode(Z)V
    .locals 0

    const-string p0, "OpPhoneWindowManager"

    if-eqz p1, :cond_0

    const-string p1, "screen-pin is enabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "screen-pin is disabled"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLockTaskModeEnabled:Z

    return-void
.end method

.method public oemIsActionPassToUser()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    const-string v0, "OpPhoneWindowManager"

    const-string v1, ""

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    move-object v1, p0

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    const-string p0, "oemIsActionPassToUser: No focused window"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/android/server/policy/OpPhoneWindowManager;->OEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-boolean p0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_2

    const-string p0, "oemIsActionPassToUser: detect power key in deskclock, pass to application"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oneplus.camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSensorRotation:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mScreenRotation:I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->setMistouchPrevention(I)V

    return-void
.end method

.method public onKeyguardDone()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->hmo()V

    :cond_0
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->onKeyguardOccludedChangedLw(Z)V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->fto(Z)V

    :cond_0
    return-void
.end method

.method public onLongshotStart()V
    .locals 3

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "longshotStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->longshotStart()V

    iput-object v1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongshotWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-object p0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    :try_start_0
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v1}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyWindowLayerChange(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onProposedRotationChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mSensorRotation:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->setMistouchPrevention(I)V

    :cond_0
    return-void
.end method

.method protected opOnDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->longshotStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpPhoneWindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected performKeyAction(ILandroid/view/KeyEvent;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0xd

    if-nez v0, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->triggerVirtualKeypress(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/oneplus/android/server/scene/ZenModeObserver;->getInstance()Lcom/oneplus/android/server/scene/ZenModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/ZenModeObserver;->isZenModeOn()Z

    move-result v0

    const-string v3, "Ignoring key customization: "

    const-string v4, "OpPhoneWindowManager"

    const/16 v5, 0xc

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_2

    if-eq p1, v5, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " by Zen Mode!"

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eq p1, v2, :cond_3

    if-eq p1, v5, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->hasInComingCall()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ; there\'s a ringing incoming call."

    goto :goto_1

    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/OpPhoneWindowManager;->triggerVirtualKeypress(I)V

    goto :goto_3

    :pswitch_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    goto :goto_3

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->toggleSplitScreen()V

    goto :goto_3

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getFocusedWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationShade"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->collapsePanels()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->expandNotificationsPanel()V

    goto :goto_3

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->launchQuickAccessPage()V

    goto :goto_3

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->switchToLastApp(Landroid/content/Context;I)Z

    goto :goto_3

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->launchVoiceAssistAction()V

    goto :goto_3

    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->launchCameraAction()V

    goto :goto_3

    :pswitch_9
    invoke-direct {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->putDeviceToSleep()V

    goto :goto_3

    :pswitch_a
    const/4 p1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_3

    :pswitch_c
    const/16 p1, 0x52

    invoke-virtual {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->triggerVirtualKeypress(I)V

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public postScreenshotRunnable()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/OpPhoneWindowManager;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "postScreenshotRunnable(): take screenshot immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->cancelPendingPowerKeyAction()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public screenTurnedOff()V
    .locals 0

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOff()V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->lqr()V

    :cond_0
    return-void
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->veq()V

    :cond_0
    return-void
.end method

.method public setCurrentRotation(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mScreenRotation:I

    invoke-virtual {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->setMistouchPrevention(I)V

    return-void
.end method

.method setMistouchPrevention(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mMistouchRotation:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mMistouchRotation:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public shouldSkipLockTaskMode()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLastShowBlockToastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    const-string v1, "OpPhoneWindowManager"

    if-gez v0, :cond_0

    const-string p0, "GestureButton: Ignore show toast in very short interval."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    new-instance v2, Lcom/android/server/policy/OpPhoneWindowManager$bio;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OpPhoneWindowManager$bio;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const-string p0, "GestureButton: Blocking screen pinning."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public startedWakingUp(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(I)V

    iget-object p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->cgv()V

    :cond_0
    return-void
.end method

.method protected stopLongshot()V
    .locals 1

    sget-object p0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->stopLongshot(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpPhoneWindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public stopLongshotConnection()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongshotWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->longshotStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mLongshotWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->stopLongshotConnection()V

    :cond_1
    return-void
.end method

.method public systemReady()V
    .locals 5

    invoke-super {p0}, Lcom/android/server/policy/PhoneWindowManager;->systemReady()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v3, 0xa

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/OpPhoneWindowManager;->HAS_HW_KEYS:Z

    const-string v3, "oem_acc_key_lock_mode"

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->zta:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v2, v0

    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "OpPhoneWindowManager"

    const-string v1, "Restore the key lock mode to BACK_SWITCH because navigation bar is enabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->ssp:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mDeviceKeyHandler:Lcom/android/server/policy/DeviceKeyHandler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler;->h()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    new-instance v1, Lcom/android/server/policy/OpPhoneWindowManager$you;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpPhoneWindowManager$you;-><init>(Lcom/android/server/policy/OpPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public takeOPLongshotVoice(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public takeOPScreenshot(II)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p2, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object p1, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mHandler:Lcom/android/server/policy/OpPhoneWindowManager$dma;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected triggerVirtualKeypress(I)V
    .locals 14

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x8

    const v12, 0x10000101

    move-object v0, v13

    move-wide v1, v3

    move v6, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 p1, 0x1

    invoke-static {v13, p1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v13, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {p0, p1, v0}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method updateSwapKey()V
    .locals 4

    iget p0, p0, Lcom/android/server/policy/OpPhoneWindowManager;->mKeysBehavior:I

    const-string v0, "0"

    const-string v1, "1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_1

    new-array p0, v3, [I

    aput v3, p0, v2

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    new-array p0, v3, [I

    aput v3, p0, v2

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_2
    :goto_0
    :try_start_0
    const-string p0, "OnePlus3"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "/proc/s1302/key_rep"

    :goto_1
    invoke-static {p0, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-boolean p0, Lcom/android/server/policy/OpPhoneWindowManager;->HAS_HW_KEYS:Z

    if-eqz p0, :cond_4

    const-string p0, "/proc/touchpanel/key_switch"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpPhoneWindowManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method
