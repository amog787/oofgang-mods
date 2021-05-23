.class public final Lcom/android/server/OnePlusExService;
.super Lcom/oneplus/os/IOnePlusExService$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusExService$ssp;
    }
.end annotation


# static fields
.field private static final ACTION_START_CAR_MODE:Ljava/lang/String; = "oneplus.intent.action.OP_CAR_CHARGER_SETTINGS"

.field private static final CAR_CHARGER_DEFAULT_TYPE:I = 0x3

.field private static final CAR_CHARGER_NOTIFICATION_CHANNEL_HIGH_ID:Ljava/lang/String; = "car_charger_notification_channel_high_id"

.field private static final CAR_CHARGER_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "car_charger_notification_channel_id"

.field private static final CAR_CHARGER_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "car_charger_notification"

.field static final DEBUG:Z = true

.field static final DEBUG_OEM_OBSERVER:Z = true

.field private static final KERNEL_WAKEUP_SOURCES:Ljava/lang/String; = "/d/wakeup_sources"

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final OEM_BOOT_COMPLETED:Ljava/lang/String; = "com.oem.intent.action.BOOT_COMPLETED"

.field private static final RETAILMODE_STUB_PATH:[Ljava/lang/String;

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/os/IOnePlusExService;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OnePlusExService"

.field private static final WARP_CHARGE_FILE:Ljava/lang/String; = "warp_charge"

.field public static debugOnePlus:Z

.field private static disableDuplicate:Z

.field private static ifBootCompleted:Z

.field private static mDropbox:Landroid/os/DropBoxManager;


# instance fields
.field private mBatteryStatus:I

.field private mCarChargerNotificationShown:Z

.field private final mCarModeReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCarMode:Landroid/os/Handler;

.field private final mInstallTask:Lcom/android/server/bvj;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private final mRingtoneUtils:Lcom/android/server/OnePlusExService$ssp;

.field private mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

.field private volatile mSystemReady:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private nb:Landroid/app/Notification$Builder;

.field outStream:Ljava/io/FileOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OnePlusExService;->disableDuplicate:Z

    sput-boolean v0, Lcom/android/server/OnePlusExService;->ifBootCompleted:Z

    const-string v0, "/system/app/"

    const-string v1, "/system_ext/app/"

    const-string v2, "/product/app/"

    const-string v3, "/odm/app/"

    const-string v4, "/vendor/app/"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OnePlusExService;->RETAILMODE_STUB_PATH:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/OnePlusExService$zta;

    invoke-direct {v0}, Lcom/android/server/OnePlusExService$zta;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusExService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusExService$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OnePlusExService;->mSystemReady:Z

    iput-boolean v0, p0, Lcom/android/server/OnePlusExService;->mCarChargerNotificationShown:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/OnePlusExService;->mBatteryStatus:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/OnePlusExService;->nb:Landroid/app/Notification$Builder;

    iput-object v1, p0, Lcom/android/server/OnePlusExService;->outStream:Ljava/io/FileOutputStream;

    new-instance v2, Lcom/android/server/bvj;

    invoke-direct {v2}, Lcom/android/server/bvj;-><init>()V

    iput-object v2, p0, Lcom/android/server/OnePlusExService;->mInstallTask:Lcom/android/server/bvj;

    new-instance v2, Lcom/android/server/OnePlusExService$ssp;

    invoke-direct {v2, p0, v1}, Lcom/android/server/OnePlusExService$ssp;-><init>(Lcom/android/server/OnePlusExService;Lcom/android/server/OnePlusExService$zta;)V

    iput-object v2, p0, Lcom/android/server/OnePlusExService;->mRingtoneUtils:Lcom/android/server/OnePlusExService$ssp;

    new-instance v2, Lcom/android/server/OnePlusExService$you;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/android/server/OnePlusExService$you;-><init>(Lcom/android/server/OnePlusExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v2, p0, Lcom/android/server/OnePlusExService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/OnePlusExService$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusExService$rtg;-><init>(Lcom/android/server/OnePlusExService;)V

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "OnePlusExService"

    const-string v0, "construct called"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/OnePlusExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->onSystemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/OnePlusExService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/OnePlusExService;->mBatteryStatus:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/OnePlusExService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/OnePlusExService;->mBatteryStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/OnePlusExService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mHandlerCarMode:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusExService;->ifBootCompleted:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/OnePlusExService;->ifBootCompleted:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusExService;->disableDuplicate:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/OnePlusExService;->disableDuplicate:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/OnePlusExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->createNotificationChannel()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/OnePlusExService;Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusExService;->createNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/OnePlusExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->createNotificationChannelForPopup()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/OnePlusExService;Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusExService;->createNotificationBuilderForPopup(Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/OnePlusExService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusExService;->saveDNDStateToFile(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/OnePlusExService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/OnePlusExService;->mCarChargerNotificationShown:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/android/server/OnePlusExService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OnePlusExService;->mCarChargerNotificationShown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusExService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/OnePlusExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->setDontDisturbForCarMode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/OnePlusExService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusExService;->startSelectApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/OnePlusExService;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mCarModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/OnePlusExService;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->getDNDStateFromFile()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/OnePlusExService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->disableDontDisturbForCarMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/OnePlusExService;)Lcom/oneplus/android/server/scene/OemSceneModeController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/OnePlusExService;Lcom/oneplus/android/server/scene/OemSceneModeController;)Lcom/oneplus/android/server/scene/OemSceneModeController;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/OnePlusExService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/OnePlusExService;)[I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->getRes()[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/OnePlusExService;Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusExService;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/OnePlusExService;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/OnePlusExService;)Landroid/app/Notification$Builder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->nb:Landroid/app/Notification$Builder;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/server/OnePlusExService;Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusExService;->nb:Landroid/app/Notification$Builder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/OnePlusExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/OnePlusExService;->showCarModeNotification(ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    return-void
.end method

.method private createNotificationBuilder(Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 3

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "car_charger_notification_channel_id"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x5070142

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0xf81f5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x50f001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x50f0018

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->pendingActivity()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 p1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method private createNotificationBuilderForPopup(Landroid/content/Context;)Landroid/app/Notification$Builder;
    .locals 3

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "car_charger_notification_channel_high_id"

    invoke-direct {v0, p1, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x5070142

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0xf81f5

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x50f001b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x50f0018

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->pendingActivity()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 p1, 0x8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method private createNotificationChannel()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x3

    const-string v2, "car_charger_notification_channel_id"

    const-string v3, "car_charger_notification"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private createNotificationChannelForPopup()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "car_charger_notification_channel_high_id"

    const-string v3, "car_charger_notification"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private disableDontDisturbForCarMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "CAR_MODE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private getDNDStateFromFile()I
    .locals 6

    const/4 p0, 0x0

    const/4 v0, -0x1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "warp_charge"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    const-string p0, "OnePlusExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "warp charge, get DND state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-object p0, v0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_2
    return v0

    :catchall_1
    move-exception p0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw p0
.end method

.method public static getDefault()Lcom/oneplus/os/IOnePlusExService;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusExService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/os/IOnePlusExService;

    return-object v0
.end method

.method private getRes()[I
    .locals 4

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x502000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private isRetailModeStubExists()Z
    .locals 5

    sget-object p0, Lcom/android/server/OnePlusExService;->RETAILMODE_STUB_PATH:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "OPRetailMode_stub/OPRetailMode_stub.apk"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "path = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusExService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private onSystemReady()V
    .locals 3

    const-string v0, "OnePlusExService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    sput-object v0, Lcom/android/server/OnePlusExService;->mDropbox:Landroid/os/DropBoxManager;

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OnePlusExService;->mCarModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->mHandlerCarMode:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/OnePlusExService;->isRetailModeStubExists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.sys.retailmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OPRetailMode"

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusExService;->startApkInstall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guacamoleb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.substName"

    if-eqz v0, :cond_0

    const v0, 0x50f001a

    goto :goto_0

    :cond_0
    const v0, 0x50f0019

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private pendingActivity()Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oneplus.intent.action.OP_CAR_CHARGER_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private saveDNDStateToFile(Z)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "warp_charge"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->outStream:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_0

    const-string p1, "1"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :cond_0
    const-string p1, "0"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/server/OnePlusExService;->outStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->outStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->outStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    iget-object p0, p0, Lcom/android/server/OnePlusExService;->outStream:Ljava/io/FileOutputStream;

    if-eqz p0, :cond_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    throw p1
.end method

.method private setDontDisturbForCarMode()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CAR_MODE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "zen_mode"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private showCarModeNotification(ILandroid/content/Context;IILandroid/app/Notification$Builder;)V
    .locals 8

    new-instance v7, Lcom/android/server/OnePlusExService$tsu;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/OnePlusExService$tsu;-><init>(Lcom/android/server/OnePlusExService;Landroid/app/Notification$Builder;Landroid/content/Context;III)V

    iput-object v7, p0, Lcom/android/server/OnePlusExService;->mCarModeRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mHandlerCarMode:Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v7, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private startSelectApp(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x800000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OnePlusExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Automatically open app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public bootComplete()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OnePlusExService$sis;

    invoke-direct {v1, p0}, Lcom/android/server/OnePlusExService$sis;-><init>(Lcom/android/server/OnePlusExService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz p0, :cond_1

    const-string p0, "OnePlusExService"

    const-string v0, "[scene] Scene mode not supported"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public dumpLightBugreport(Ljava/lang/String;)V
    .locals 13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dumpLightBugreport : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusExService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "ro.build.display.id"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ro.build.fingerprint"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ro.build.version.sdk"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "persist.sys.timezone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "========================================================\n"

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "== dumpstate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Build: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build fingerprint: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DeviceID: null\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ro.build.version.sdk]: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ro.product.model]: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[persist.sys.timezone]: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-------------------------------------------------------------------------------\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/BatteryOutlierInjector;->getPidMap(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "DUMP OF SERVICE batterystats:\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "== Checkins\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-c"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "DUMP OF SERVICE sensorservice:\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "------ KERNEL WAKE SOURCES (/d/wakeup_sources) ------\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    new-instance v6, Ljava/io/File;

    const-string v7, "/d/wakeup_sources"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    long-to-double v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "s was the duration of dumpLightBugreport"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/OnePlusExService;->mDropbox:Landroid/os/DropBoxManager;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p0, "mDropbox is still null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public getUserVibratorSceneId(Landroid/net/Uri;I)I
    .locals 4

    const-string v0, "OnePlusExService"

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x61

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/OnePlusExService;->mRingtoneUtils:Lcom/android/server/OnePlusExService$ssp;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    :try_start_0
    const-string v1, "settings"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result p1

    invoke-static {v1, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->isPathPrefixMatch(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/OnePlusExService;->mRingtoneUtils:Lcom/android/server/OnePlusExService$ssp;

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, p1, p2}, Lcom/android/server/OnePlusExService$ssp;->you(Lcom/android/server/OnePlusExService$ssp;Landroid/content/Context;Landroid/net/Uri;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getUserVibratorSceneId: soundUri["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] is not belong to system sounds."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return v2

    :catch_0
    move-exception p0

    const-string p1, "getUserVibratorSceneId error:"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return v2
.end method

.method public monitorSceneChanging(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const-string v1, "OnePlusExService"

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] monitorSceneChanging: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->vju(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneModeController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    :cond_1
    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->F()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->H()V

    goto :goto_0

    :cond_3
    sget-boolean p0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz p0, :cond_4

    const-string p0, "[scene] Scene mode not supported"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusExService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusExService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x18

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const-string v1, "OnePlusExService"

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz v0, :cond_1

    const-string v0, "[scene] shutdown"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->vju(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->D()V

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mSceneModeController:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->G()V

    goto :goto_0

    :cond_3
    sget-boolean p0, Lcom/android/server/OnePlusExService;->debugOnePlus:Z

    if-eqz p0, :cond_4

    const-string p0, "[scene] Scene mode not supported"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public startApkInstall(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mInstallTask:Lcom/android/server/bvj;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/bvj;->ywr(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public systemRunning()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "OnePlusExService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/OnePlusExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/OnePlusExService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateUserVibratorSceneIds(Ljava/util/Map;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusExService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/OnePlusExService;->mRingtoneUtils:Lcom/android/server/OnePlusExService$ssp;

    if-eqz p0, :cond_0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/OnePlusExService$ssp;->zta(Lcom/android/server/OnePlusExService$ssp;Landroid/content/Context;Ljava/util/Map;I)V

    :cond_0
    return-void
.end method
