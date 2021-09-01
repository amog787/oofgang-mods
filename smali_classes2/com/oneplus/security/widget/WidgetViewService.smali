.class public Lcom/oneplus/security/widget/WidgetViewService;
.super Landroid/app/Service;
.source "WidgetViewService.java"

# interfaces
.implements Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;
.implements Lcom/oneplus/security/network/simcard/SimStateListener;
.implements Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;,
        Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;,
        Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;,
        Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;,
        Lcom/oneplus/security/widget/WidgetViewService$WidgetHandler;
    }
.end annotation


# static fields
.field private static dataLeftTitle:Ljava/lang/String; = ""

.field private static final dataLock:Ljava/lang/Object;

.field private static dataUsedTitle:Ljava/lang/String; = ""

.field public static isScreenOn:Z = false

.field public static sWidgetDataItems:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/security/widget/WidgetData;",
            ">;"
        }
    .end annotation
.end field

.field private static storageAndBatteryUnits:Ljava/lang/String; = "%"


# instance fields
.field private dataTitleIsUsed:Z

.field private mAvailableStorage:I

.field private mBatteryReceiver:Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;

.field private mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mCurrentDataSim:I

.field private mDataUsage:Lcom/oneplus/security/widget/WidgetData;

.field private mDefaultDataSimChangedReceiver:Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;

.field private mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

.field private mHandler:Landroid/os/Handler;

.field private mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

.field private mPower:I

.field private mRefreshThread:Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;

.field private mScreenOnReceiver:Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageObserver:Landroid/database/ContentObserver;

.field private mTimer:Ljava/util/Timer;

.field private mTotal:J

.field private mUsed:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 72
    sput-object v0, Lcom/oneplus/security/widget/WidgetViewService;->dataLock:Ljava/lang/Object;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    const/4 v0, 0x1

    .line 117
    sput-boolean v0, Lcom/oneplus/security/widget/WidgetViewService;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->dataTitleIsUsed:Z

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    .line 110
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mTimer:Ljava/util/Timer;

    .line 111
    new-instance v1, Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;

    invoke-direct {v1, p0}, Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mRefreshThread:Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;

    const/4 v1, 0x0

    .line 653
    iput v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mPower:I

    .line 687
    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 690
    iput v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mAvailableStorage:I

    .line 707
    new-instance v0, Lcom/oneplus/security/widget/WidgetViewService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/widget/WidgetViewService$1;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 724
    new-instance v0, Lcom/oneplus/security/widget/WidgetViewService$2;

    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/security/widget/WidgetViewService$2;-><init>(Lcom/oneplus/security/widget/WidgetViewService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 68
    sget-object v0, Lcom/oneplus/security/widget/WidgetViewService;->dataLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/security/widget/WidgetViewService;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/security/widget/WidgetViewService;ILcom/oneplus/security/widget/WidgetData;J)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/security/widget/WidgetViewService;->sendHandlerMessage(ILcom/oneplus/security/widget/WidgetData;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/security/widget/WidgetViewService;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->initOperatorDataModel()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/security/widget/WidgetViewService;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mPower:I

    return p0
.end method

.method static synthetic access$402(Lcom/oneplus/security/widget/WidgetViewService;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mPower:I

    return p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/oneplus/security/widget/WidgetViewService;->storageAndBatteryUnits:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/security/widget/WidgetViewService;)Landroid/os/storage/StorageManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/security/widget/WidgetViewService;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mAvailableStorage:I

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/security/widget/WidgetViewService;I)I
    .locals 0

    .line 68
    iput p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mAvailableStorage:I

    return p1
.end method

.method private initOperatorDataModel()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    .line 338
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    .line 339
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 340
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->addQueryResultListener(I)V

    return-void
.end method

.method private registFileObserver()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lcom/oneplus/security/widget/FileSystemObserver;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/security/widget/FileSystemObserver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

    invoke-virtual {v0, p0}, Lcom/oneplus/security/widget/FileSystemObserver;->setStorageListener(Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;)V

    .line 736
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private registerBatteryReceiver()V
    .locals 2

    .line 656
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 657
    new-instance v1, Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;

    invoke-direct {v1, p0}, Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mBatteryReceiver:Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;

    .line 658
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mBatteryReceiver:Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerDefaultDataSimChangedReceiver()V
    .locals 2

    .line 638
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 639
    new-instance v1, Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;

    invoke-direct {v1, p0}, Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDefaultDataSimChangedReceiver:Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;

    .line 640
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDefaultDataSimChangedReceiver:Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendHandlerMessage(ILcom/oneplus/security/widget/WidgetData;J)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 783
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 785
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 3

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static stoptService(Landroid/content/Context;)V
    .locals 3

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/widget/WidgetViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    :try_start_0
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private unRegistFileObserver()V
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 742
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mFileSystemObserver:Lcom/oneplus/security/widget/FileSystemObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/security/widget/FileSystemObserver;->setStorageListener(Lcom/oneplus/security/widget/FileSystemObserver$StorageListener;)V

    :cond_0
    return-void
.end method

.method private unRegisterBatteryReceiver()V
    .locals 1

    .line 662
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mBatteryReceiver:Lcom/oneplus/security/widget/WidgetViewService$BatteryReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unRegisterDefaultDataSimChangedReceiver()V
    .locals 1

    .line 647
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDefaultDataSimChangedReceiver:Lcom/oneplus/security/widget/WidgetViewService$DefaultDataSimChangedReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 702
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 704
    :cond_0
    iget-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public loadSystemStorage()V
    .locals 2

    .line 747
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->getCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 748
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 751
    :cond_0
    new-instance v1, Lcom/oneplus/security/widget/WidgetViewService$3;

    invoke-direct {v1, p0}, Lcom/oneplus/security/widget/WidgetViewService$3;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized notifyMonthlyRemainingDataChanged(JJ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "WidgetViewService"

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------notifyMonthlyRemainingDataChanged-----------total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",used="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iput-wide p3, p0, Lcom/oneplus/security/widget/WidgetViewService;->mUsed:J

    .line 505
    iput-wide p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mTotal:J

    .line 506
    new-instance v0, Lcom/oneplus/security/widget/WidgetData;

    invoke-direct {v0}, Lcom/oneplus/security/widget/WidgetData;-><init>()V

    const/4 v1, 0x0

    .line 507
    invoke-virtual {v0, v1}, Lcom/oneplus/security/widget/WidgetData;->setType(I)V

    .line 508
    sget-object v2, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 510
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->data_usage_left_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    .line 511
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->traffic_package_used:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "WidgetViewService"

    .line 513
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    const-string p1, "-"

    .line 518
    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setValue(Ljava/lang/String;)V

    const-string p1, ""

    .line 519
    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setUnits(Ljava/lang/String;)V

    .line 520
    sget-object p1, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 524
    :cond_2
    iget v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-static {p0, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->dataTitleIsUsed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    :try_start_3
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sub-long/2addr p1, p3

    invoke-static {v2, p1, p2, v3, v3}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    move-wide p3, v4

    :goto_2
    invoke-static {p2, p3, p4, v3, v3}, Lcom/oneplus/security/utils/Utils;->getFormattedFileSizeAndUnitForDisplay(Landroid/content/Context;JZZ)[Ljava/lang/String;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_4
    const-string p2, ""

    const-string p3, ""

    .line 529
    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    const-string p3, ""

    const-string p4, ""

    .line 530
    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    const-string p4, "WidgetViewService"

    const-string v2, "getFormattedFileSizeAndUnit error!!!"

    .line 531
    invoke-static {p4, v2}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, p2

    move-object p2, p3

    .line 537
    :goto_3
    iget-boolean p3, p0, Lcom/oneplus/security/widget/WidgetViewService;->dataTitleIsUsed:Z

    if-nez p3, :cond_5

    .line 538
    aget-object p2, p1, v1

    invoke-virtual {v0, p2}, Lcom/oneplus/security/widget/WidgetData;->setValue(Ljava/lang/String;)V

    .line 539
    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setUnits(Ljava/lang/String;)V

    .line 540
    sget-object p1, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 542
    :cond_5
    aget-object p1, p2, v1

    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setValue(Ljava/lang/String;)V

    .line 543
    aget-object p1, p2, v3

    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setUnits(Ljava/lang/String;)V

    .line 544
    sget-object p1, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    .line 548
    :goto_4
    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    .line 549
    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    .line 550
    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {p1}, Lcom/oneplus/security/widget/WidgetData;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/oneplus/security/widget/WidgetData;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "WidgetViewService"

    const-string p2, "mDataUsage == data"

    .line 551
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    .line 554
    :cond_6
    :try_start_5
    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    const/4 p1, 0x2

    const-wide/16 p2, 0x3e8

    .line 555
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oneplus/security/widget/WidgetViewService;->sendHandlerMessage(ILcom/oneplus/security/widget/WidgetData;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 556
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const-string v0, "WidgetViewService"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 263
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->symbol_percent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/security/widget/WidgetViewService;->storageAndBatteryUnits:Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->data_usage_left_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->traffic_package_used:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storageAndBatteryUnits:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/security/widget/WidgetViewService;->storageAndBatteryUnits:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",dataLeftTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",dataUsedTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged getString error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 271
    :goto_0
    iget v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-static {p0, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->dataTitleIsUsed:Z

    .line 272
    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_1
    sget-object v0, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x5

    const-wide/16 v2, 0x3e8

    .line 278
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/security/widget/WidgetViewService;->sendHandlerMessage(ILcom/oneplus/security/widget/WidgetData;J)V

    goto :goto_2

    .line 280
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/widget/WidgetViewService;->startService(Landroid/content/Context;)V

    .line 282
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 7

    const-string v0, "WidgetViewService"

    const-string v1, "--------onCreate-----------"

    .line 207
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 209
    iput-object p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mContext:Landroid/content/Context;

    .line 210
    new-instance v1, Lcom/oneplus/security/widget/WidgetViewService$WidgetHandler;

    invoke-direct {v1, p0}, Lcom/oneplus/security/widget/WidgetViewService$WidgetHandler;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mHandler:Landroid/os/Handler;

    .line 211
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    .line 212
    invoke-interface {v1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    .line 213
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->getCurrentTrafficRunningSlotId()I

    move-result v1

    iput v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    .line 214
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->initOperatorDataModel()V

    .line 215
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->registerDefaultDataSimChangedReceiver()V

    .line 216
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->registerBatteryReceiver()V

    .line 218
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 219
    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 220
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/oneplus/security/utils/FileSizeUtil;->registerStorageDBObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 221
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->registFileObserver()V

    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->symbol_percent:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/security/widget/WidgetViewService;->storageAndBatteryUnits:Ljava/lang/String;

    .line 225
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->data_usage_left_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->traffic_package_used:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate getString error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 231
    :goto_0
    new-instance v0, Lcom/oneplus/security/widget/WidgetData;

    invoke-direct {v0}, Lcom/oneplus/security/widget/WidgetData;-><init>()V

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    const/4 v1, 0x0

    .line 232
    invoke-virtual {v0, v1}, Lcom/oneplus/security/widget/WidgetData;->setType(I)V

    .line 233
    iget v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-static {p0, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->dataTitleIsUsed:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    sget-object v1, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    sget-object v1, Lcom/oneplus/security/widget/WidgetViewService;->dataLeftTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/security/widget/WidgetData;->setTitle(Ljava/lang/String;)V

    .line 239
    :goto_1
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/oneplus/security/widget/WidgetData;->setUnits(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Lcom/oneplus/security/widget/WidgetData;->setValue(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->setWidgetData()V

    .line 244
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 245
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/security/widget/WidgetViewService;->isScreenOn:Z

    .line 246
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mRefreshThread:Lcom/oneplus/security/widget/WidgetViewService$RefreshThread;

    const-wide/16 v3, 0x3e8

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 248
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 249
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    new-instance v1, Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;

    invoke-direct {v1, p0}, Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;-><init>(Lcom/oneplus/security/widget/WidgetViewService;)V

    iput-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mScreenOnReceiver:Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;

    .line 251
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mScreenOnReceiver:Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "traffic_usage_alert"

    .line 253
    invoke-static {v0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 254
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "WidgetViewService"

    const-string v1, "--------onDestroy-----------"

    .line 292
    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mScreenOnReceiver:Lcom/oneplus/security/widget/WidgetViewService$ScreenOnOffReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 294
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->unRegisterDefaultDataSimChangedReceiver()V

    .line 295
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->unRegisterBatteryReceiver()V

    .line 296
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageObserver:Landroid/database/ContentObserver;

    invoke-static {v1, v2}, Lcom/oneplus/security/utils/FileSizeUtil;->unRegisterStorageDBObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 297
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 298
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->unRegistFileObserver()V

    const-string v1, "shelf_widget_id"

    const/4 v2, -0x1

    .line 301
    invoke-static {v1, v2}, Lcom/oneplus/security/utils/SharedPreferenceHelper;->putInt(Ljava/lang/String;I)V

    .line 303
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v1, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    .line 304
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    invoke-interface {v1, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeTrafficUsageUpdater(Lcom/oneplus/security/network/operator/OperatorPackageUsageUpdater;)V

    .line 305
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    iget v2, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-interface {v1, v2}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->removeQueryResultListener(I)V

    .line 306
    sget-object v1, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 307
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCachedThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 311
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 313
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 317
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onFileChanged()V
    .locals 4

    const/4 v0, 0x6

    const/4 v1, 0x0

    const-wide/16 v2, 0x1388

    .line 774
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/security/widget/WidgetViewService;->sendHandlerMessage(ILcom/oneplus/security/widget/WidgetData;J)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSharedPreferenceChanged key = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WidgetViewService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_data_usage_total_state_subid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-static {v0}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-wide p1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mTotal:J

    iget-wide v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mUsed:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oneplus/security/widget/WidgetViewService;->notifyMonthlyRemainingDataChanged(JJ)V

    :cond_0
    return-void
.end method

.method public onSimOperatorCodeChanged(ILjava/lang/String;)V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimOperatorCodeChanged slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",simValue"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WidgetViewService"

    invoke-static {p2, p1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Lcom/oneplus/security/widget/WidgetViewService;->initOperatorDataModel()V

    .line 575
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->requestDataUsageUpdate()V

    return-void
.end method

.method public onSimStateChanged(Ljava/lang/String;)V
    .locals 1

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimStateChanged simState="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WidgetViewService"

    invoke-static {p1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const-string p1, "WidgetViewService"

    const-string p2, "--------onStartCommand-----------"

    .line 198
    invoke-static {p1, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    const-wide/16 v0, 0x3e8

    .line 199
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/security/widget/WidgetViewService;->sendHandlerMessage(ILcom/oneplus/security/widget/WidgetData;J)V

    .line 200
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->requestDataUsageUpdate()V

    .line 201
    invoke-virtual {p0}, Lcom/oneplus/security/widget/WidgetViewService;->loadSystemStorage()V

    const/4 p0, 0x1

    return p0
.end method

.method public onTrafficTotalAndUsedUpdate(JJI)V
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrafficTotalAndUsedUpdate totalByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",usedByte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetViewService"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    if-ne p5, v0, :cond_0

    .line 562
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/security/widget/WidgetViewService;->notifyMonthlyRemainingDataChanged(JJ)V

    :cond_0
    return-void
.end method

.method public requestDataUsageUpdate()V
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------requestDataUsageUpdate mCurrentDataSim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WidgetViewService"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    iget v1, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mOperatorDataModel:Lcom/oneplus/security/network/operator/OperatorModelInterface;

    if-eqz v0, :cond_1

    .line 486
    iget p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    invoke-interface {v0, p0}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->requesetPkgMonthlyUsageAndTotalInByte(I)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 489
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/oneplus/security/widget/WidgetViewService;->notifyMonthlyRemainingDataChanged(JJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewClickIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/network/view/DataUsageMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    iget p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mCurrentDataSim:I

    const-string v1, "select_tab"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "tracker_event"

    const/4 v1, 0x1

    .line 589
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const v2, 0x10008000

    .line 590
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 591
    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 592
    sget v3, Lcom/android/settings/R$id;->widget_datausage:I

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 595
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 596
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 597
    invoke-static {}, Lcom/oneplus/security/utils/FunctionUtils;->isH2OS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    invoke-static {}, Lcom/oneplus/security/utils/Utils;->issSDKAbove28()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.oneplus.filemanager.action.SMART_CLEAN"

    .line 599
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "com.oneplus.security.action.CLEAN_ACTIVITY"

    .line 601
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v3, "android.settings.INTERNAL_STORAGE_SETTINGS"

    .line 604
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    :goto_0
    invoke-static {p1, v1, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 607
    sget v3, Lcom/android/settings/R$id;->widget_storage:I

    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, ":settings:show_fragment_as_subsetting"

    .line 611
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "settings:from_app"

    const-string v5, "com.oneplus.security"

    .line 612
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 614
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p0, 0x2

    .line 615
    invoke-static {p1, p0, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 616
    sget p1, Lcom/android/settings/R$id;->widget_battery:I

    invoke-virtual {p2, p1, p0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public setWidgetData()V
    .locals 7

    .line 322
    iget-object v0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    new-instance v2, Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {v0}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {v3}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/security/widget/WidgetViewService;->mDataUsage:Lcom/oneplus/security/widget/WidgetData;

    invoke-virtual {v4}, Lcom/oneplus/security/widget/WidgetData;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v0, v3, v4}, Lcom/oneplus/security/widget/WidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_0
    new-instance v2, Lcom/oneplus/security/widget/WidgetData;

    sget-object v0, Lcom/oneplus/security/widget/WidgetViewService;->dataUsedTitle:Ljava/lang/String;

    const-string v3, "-"

    const-string v4, ""

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/oneplus/security/widget/WidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_0
    new-instance v0, Lcom/oneplus/security/widget/WidgetData;

    iget v3, p0, Lcom/oneplus/security/widget/WidgetViewService;->mAvailableStorage:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/oneplus/security/widget/WidgetViewService;->storageAndBatteryUnits:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v0, v5, v3, v4}, Lcom/oneplus/security/widget/WidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v3, Lcom/oneplus/security/widget/WidgetData;

    iget p0, p0, Lcom/oneplus/security/widget/WidgetViewService;->mPower:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lcom/oneplus/security/widget/WidgetViewService;->storageAndBatteryUnits:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {v3, v6, p0, v4}, Lcom/oneplus/security/widget/WidgetData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object p0, Lcom/oneplus/security/widget/WidgetViewService;->dataLock:Ljava/lang/Object;

    monitor-enter p0

    .line 330
    :try_start_0
    sget-object v4, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v1, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/oneplus/security/widget/WidgetViewService;->sWidgetDataItems:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateRemoteViews(Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/security/widget/WidgetData;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "%.0f"

    const-string v3, "WidgetViewService"

    if-eqz v1, :cond_7

    .line 385
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_3

    .line 390
    :cond_0
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/oneplus/security/widget/SecurityWidgetProvider;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 392
    invoke-virtual {v5, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    if-eqz v4, :cond_5

    .line 393
    array-length v6, v4

    if-gtz v6, :cond_1

    goto/16 :goto_2

    .line 398
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--------updateRemoteViews widgetDataItems="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",widgets.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v6, v0, Lcom/oneplus/security/widget/WidgetViewService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/oneplus/security/utils/FunctionUtils;->isSupportTransparent(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    const-string v6, "shelf_widget_id"

    .line 401
    invoke-static {v6, v7}, Lcom/oneplus/security/utils/SharedPreferenceHelper;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_2
    const/4 v6, 0x0

    move v8, v6

    .line 405
    :goto_0
    array-length v9, v4

    if-ge v8, v9, :cond_6

    .line 406
    aget v9, v4, v8

    .line 407
    sget v10, Lcom/android/settings/R$layout;->security_widget_layout:I

    if-ne v9, v7, :cond_3

    .line 409
    sget v10, Lcom/android/settings/R$layout;->security_widget_layout_shelf:I

    .line 411
    :cond_3
    new-instance v11, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 412
    iget-object v10, v0, Lcom/oneplus/security/widget/WidgetViewService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10, v11}, Lcom/oneplus/security/widget/WidgetViewService;->setViewClickIntent(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 413
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/security/widget/WidgetData;

    .line 414
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dataUsage"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/oneplus/security/widget/WidgetData;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    .line 415
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/security/widget/WidgetData;

    const/4 v14, 0x2

    .line 416
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v1, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/oneplus/security/widget/WidgetData;

    .line 417
    sget v15, Lcom/android/settings/R$id;->widget_datausage_title:I

    invoke-virtual {v10}, Lcom/oneplus/security/widget/WidgetData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v15, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 418
    sget v6, Lcom/android/settings/R$id;->widget_datausage_left_value:I

    invoke-virtual {v10}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v6, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 419
    sget v6, Lcom/android/settings/R$id;->widget_datausage_left_units:I

    invoke-virtual {v10}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 420
    sget v6, Lcom/android/settings/R$id;->widget_storage_left_value:I

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v10, v16

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 421
    sget v6, Lcom/android/settings/R$id;->widget_storage_left_units:I

    invoke-virtual {v13}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 422
    sget v6, Lcom/android/settings/R$id;->widget_battery_left_value:I

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/oneplus/security/widget/WidgetData;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 423
    sget v6, Lcom/android/settings/R$id;->widget_battery_left_units:I

    invoke-virtual {v14}, Lcom/oneplus/security/widget/WidgetData;->getUnits()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 424
    sget v6, Lcom/android/settings/R$id;->widget_action_bar:I

    sget v10, Lcom/android/settings/R$string;->widget_name:I

    invoke-virtual {v0, v10}, Landroid/app/Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "widgetId :  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onShelfWidgetId :  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v9, v7, :cond_4

    const-string v6, "widgetId : ======  onShelfWidgetId"

    .line 428
    invoke-static {v3, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget v6, Lcom/android/settings/R$id;->widget_layout:I

    const-string v10, "setBackgroundColor"

    iget-object v12, v0, Lcom/oneplus/security/widget/WidgetViewService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/settings/R$color;->transparent:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v6, v10, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 430
    sget v6, Lcom/android/settings/R$id;->widget_action_bar:I

    const/16 v10, 0x8

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    const-string v6, "widgetId : !!!!!!=  onShelfWidgetId"

    .line 432
    invoke-static {v3, v6}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget v6, Lcom/android/settings/R$id;->widget_action_bar:I

    const/4 v10, 0x0

    invoke-virtual {v11, v6, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 435
    :goto_1
    invoke-virtual {v5, v9, v11}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto/16 :goto_0

    :cond_5
    :goto_2
    const-string v1, "updateRemoteViews widgets is empty, service.stopSelf()"

    .line 394
    invoke-static {v3, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppWidget exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_3
    const-string v0, "widgetDataItems is empty or null."

    .line 386
    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
