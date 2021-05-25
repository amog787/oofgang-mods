.class public Lcom/android/server/am/AppRecordManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpAppRecord;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppRecordManagerService$cno;,
        Lcom/android/server/am/AppRecordManagerService$ssp;,
        Lcom/android/server/am/AppRecordManagerService$rtg;,
        Lcom/android/server/am/AppRecordManagerService$tsu;,
        Lcom/android/server/am/AppRecordManagerService$UidObserver;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.apprecord.action.test"

.field public static final DETAIL:I = 0x1

.field public static final IN_USING:Z

.field public static final MEDIUM:I = 0x2

.field public static final ONEPLUS:I = 0x3

.field private static final OP_FEATURE_APPDIED_STATISTICE:Z

.field public static final OP_FEATURE_ORM:Z

.field public static final ORM_FEATURE_ENABLE:Z

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field public static final TAG:Ljava/lang/String; = "AppRecordManager"

.field public static final TAGA:Ljava/lang/String; = "LORM-AppRecordTransition"

.field public static final UIDOBSERVER:I

.field private static final URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

.field private static sIntance:Lcom/android/server/am/AppRecordManagerService;

.field private static sLogLevel:I


# instance fields
.field private final mAppRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/wtn;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBluetoothList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHighWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHighusedDebug:Z

.field private mIsInit:Z

.field private final mIsolatedUids:Landroid/util/SparseIntArray;

.field private mLockedTasksContentObserver:Lcom/android/server/am/AppRecordManagerService$tsu;

.field private mNotificationListenerService:Lcom/android/server/am/AppRecordManagerService$ssp;

.field private mOMMFrontMonitor:Lcom/android/server/am/AppRecordManagerService$rtg;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private final mPosted:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mPreLockedTasksList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrehighResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchWindowListener:Lcom/android/server/am/AppRecordManagerService$cno;

.field private final mUidObserver:Lcom/android/server/am/AppRecordManagerService$UidObserver;

.field proximitySensor:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x15

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/AppRecordManagerService;->IN_USING:Z

    new-array v1, v0, [I

    const/16 v2, 0xf4

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_APPDIED_STATISTICE:Z

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/AppRecordManagerService;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    new-array v1, v0, [I

    const/16 v2, 0xf7

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_ORM:Z

    const-string v1, "persist.sys.orm.feature.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/AppRecordManagerService;->ORM_FEATURE_ENABLE:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/server/am/AppRecordManagerService;->sLogLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPrehighResult:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/android/server/am/AppRecordManagerService$UidObserver;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordManagerService$UidObserver;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mUidObserver:Lcom/android/server/am/AppRecordManagerService$UidObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsInit:Z

    new-instance v1, Lcom/android/server/am/AppRecordManagerService$rtg;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppRecordManagerService$rtg;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mOMMFrontMonitor:Lcom/android/server/am/AppRecordManagerService$rtg;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/server/am/AppRecordManagerService$cno;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppRecordManagerService$cno;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mTouchWindowListener:Lcom/android/server/am/AppRecordManagerService$cno;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPosted:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothList:Ljava/util/List;

    const-string v1, "persist.sys.rp.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppRecordManagerService;->mHighusedDebug:Z

    new-instance v0, Lcom/android/server/am/AppRecordManagerService$zta;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordManagerService$zta;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/AppRecordManagerService$you;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordManagerService$you;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/AppRecordManagerService$sis;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordManagerService$sis;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/AppRecordManagerService;->proximitySensor:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->replacePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->updateLockedTaskInfoLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPosted:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/am/AppRecordManagerService;Landroid/app/Notification;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->isNoClear(Landroid/app/Notification;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppRecordManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->dump(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->dumpSensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->dumpIsolated()V

    return-void
.end method

.method static synthetic access$702(I)I
    .locals 0

    sput p0, Lcom/android/server/am/AppRecordManagerService;->sLogLevel:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/am/AppRecordManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->dumpApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/AppRecordManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->dumpApp(I)V

    return-void
.end method

.method private addPackage(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->createAppRecordFromPMS(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addPackage error, couldn\'t create apprecord for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p1, v0, Lcom/android/server/am/wtn;->sis:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x4000

    invoke-virtual {v0, p1}, Lcom/android/server/am/wtn;->zta(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/wtn;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/server/am/wtn;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v2, v0, Lcom/android/server/am/wtn;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, v0, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dump(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "AppRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dump # mAppRecordMap size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/wtn;

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/wtn;->igw()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "AppRecordManager"

    invoke-virtual {v2}, Lcom/android/server/am/wtn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    const-string p0, "AppRecordManager"

    const-string p1, " dump # mAppRecordMap size <= 0 , return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpApp(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/wtn;

    iget v3, v2, Lcom/android/server/am/wtn;->zta:I

    if-ne p1, v3, :cond_2

    const-string v3, "AppRecordManager"

    invoke-virtual {v2}, Lcom/android/server/am/wtn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    const-string p0, "AppRecordManager"

    const-string p1, " dump # mAppRecordMap size <= 0 , return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpApp(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/wtn;

    iget-object v3, v2, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AppRecordManager"

    invoke-virtual {v2}, Lcom/android/server/am/wtn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    :goto_1
    const-string p0, "AppRecordManager"

    const-string p1, " dump # mAppRecordMap size <= 0 , return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private dumpIsolated()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    const-string v1, "AppRecordManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isolatedUid size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "AppRecordManager"

    const-string v2, "isolatedUid : appUid"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const-string v3, "AppRecordManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method private dumpSensor()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensor("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppRecordManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/AppRecordManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppRecordManagerService;->sIntance:Lcom/android/server/am/AppRecordManagerService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {v0}, Lcom/android/server/am/AppRecordManagerService;-><init>()V

    sput-object v0, Lcom/android/server/am/AppRecordManagerService;->sIntance:Lcom/android/server/am/AppRecordManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/am/AppRecordManagerService;->sIntance:Lcom/android/server/am/AppRecordManagerService;

    return-object v0
.end method

.method private injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "injectRegisterUidObserver e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppRecordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isHighUsedApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPrehighResult:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isNoClear(Landroid/app/Notification;)Z
    .locals 0

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p0, 0x20

    if-nez p1, :cond_1

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static myLog(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/server/am/AppRecordManagerService;->sLogLevel:I

    if-ge p0, v0, :cond_0

    return-void

    :cond_0
    const-string p0, "AppRecordManager"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifySystemUIVideoChanged(Ljava/lang/String;Z)V
    .locals 0

    const-string p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onVideoChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v0, "\\}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    const-string v2, "{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "AppRecordManager"

    const-string v1, "Exception while parsing recent task locked info"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object p0
.end method

.method private registerBluetoothReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerGeneralReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "AppRecordManager"

    const-string v0, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.apprecord.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerNotificationListenerService()V
    .locals 4

    new-instance v0, Lcom/android/server/am/AppRecordManagerService$ssp;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppRecordManagerService$ssp;-><init>(Lcom/android/server/am/AppRecordManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mNotificationListenerService:Lcom/android/server/am/AppRecordManagerService$ssp;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "AppRecordManager"

    const-string v1, "Unable to register notification listener"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v1

    if-nez p1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method private replacePackage(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "replacePackage: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method private updateLockedTaskInfoLocked()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/AppRecordManagerService;->getCurUserLockList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v7, v2

    :goto_1
    iget-object v8, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    iget-object v8, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v8, v8, v2

    aget-object v10, v4, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    aget-object v8, v9, v5

    aget-object v9, v6, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noteUserLockAppChanged true pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    aget-object v4, v4, v2

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v6, v5}, Lcom/android/server/am/OpAppRecordInjector;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    move v3, v2

    :goto_3
    iget-object v4, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v7, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v8, v8, v2

    aget-object v10, v4, v2

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    aget-object v8, v9, v5

    aget-object v9, v6, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noteUserLockAppChanged false pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    aget-object v4, v4, v2

    aget-object v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v6, v2}, Lcom/android/server/am/OpAppRecordInjector;->noteUserLockAppChanged(Ljava/lang/String;IZ)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_7
    iput-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/dma;->rtg()Lcom/android/server/am/dma;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/am/dma;->wtn(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIsolatedUid [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "(appUid)]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/wtn;

    invoke-virtual {p2, p1}, Lcom/android/server/am/wtn;->you(I)V

    goto :goto_0

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

.method public createAppRecordFromPMS(Ljava/lang/String;)Lcom/android/server/am/wtn;
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Lcom/android/server/am/wtn;

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v1

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result p0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;Z)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method dumpOMMAppRecordInfo(Ljava/io/PrintWriter;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dump # mAppRecordMap : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/wtn;

    invoke-virtual {v3}, Lcom/android/server/am/wtn;->cno()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/am/wtn;->cno()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "SCREEN OFF"

    iget-object v5, v3, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/wtn;->cno()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/h;

    invoke-static {}, Lcom/android/server/am/SocketTransition;->getInstance()Lcom/android/server/am/SocketTransition;

    move-result-object v6

    iget v7, v3, Lcom/android/server/am/wtn;->zta:I

    iget v8, v5, Lcom/android/server/am/h;->you:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/SocketTransition;->isPersistProcess(II)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/android/server/am/h;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proc pass to omm size = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_6
    :goto_2
    const-string p0, " dump # mAppRecordMap size <= 0 , return"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpsysOMM(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/qbh;->you(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method ensureAndUpdateLockedTasksInfoObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/am/AppRecordManagerService;->URI_RECENT_TASK_LOCKED_LISTL:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mLockedTasksContentObserver:Lcom/android/server/am/AppRecordManagerService$tsu;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->updateLockedTaskInfoLocked()V

    :cond_0
    return-void
.end method

.method public forceStopPackageSmart(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/wtn;->sis(Ljava/lang/String;I)V

    return-void
.end method

.method public getAllAppRecord()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/wtn;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getAppRecord(II)Lcom/android/server/am/wtn;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/wtn;

    invoke-virtual {v1, p2}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    return-object p0
.end method

.method getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_3

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v4, :cond_a

    if-eq v0, v3, :cond_8

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_5

    invoke-virtual {v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    if-nez p0, :cond_7

    new-instance p0, Lcom/android/server/am/wtn;

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    if-nez v1, :cond_7

    invoke-virtual {v3, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/android/server/am/wtn;

    invoke-direct {v3, v0, p2}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v1, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object p0, v3

    :cond_7
    :goto_3
    monitor-exit v2

    return-object p0

    :cond_8
    new-instance v0, Lcom/android/server/am/wtn;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    monitor-exit v2

    return-object v0

    :cond_a
    invoke-virtual {v4, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    if-nez p0, :cond_b

    new-instance p0, Lcom/android/server/am/wtn;

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppRecord "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppRecordManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/server/am/wtn;

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    return-object p0
.end method

.method getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/wtn;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_5

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v3, v0

    :cond_2
    :goto_0
    if-nez v2, :cond_3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_4

    new-instance p0, Lcom/android/server/am/wtn;

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, v3

    :cond_5
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAppRecord "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppRecordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public getAppRecordFromUid(I)Lcom/android/server/am/wtn;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/server/am/wtn;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method getCurUserLockList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHoldingFlag(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/wtn;

    invoke-virtual {v0}, Lcom/android/server/am/wtn;->tsu()I

    move-result v0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return p1
.end method

.method public getOwnerUid(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackageName(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1, p2}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getPackageNameFromUid(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    iget-object p0, p0, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method getPackagesFromUid(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    iget-object p1, p1, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    iget-object p1, p1, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getPackagesUsingFlag(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/wtn;

    invoke-virtual {v3}, Lcom/android/server/am/wtn;->tsu()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, v3, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object v1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getPreUserLockList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPreLockedTasksList:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getProcState(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->kth()I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x14

    return p0
.end method

.method getSensorHandle(I)I
    .locals 2

    const/4 v0, -0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/android/server/am/AppRecordManagerService;->proximitySensor:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppRecordManagerService;->proximitySensor:I

    :cond_0
    iget p0, p0, Lcom/android/server/am/AppRecordManagerService;->proximitySensor:I

    return p0

    :cond_1
    return v0
.end method

.method public getSensorName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getUidState(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->igw()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getUidsFromPackageName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/wtn;

    iget-object v4, v3, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, v3, Lcom/android/server/am/wtn;->zta:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initAppRecord(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, " initAppRecord"

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/server/am/wtn;

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v2

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/wtn;-><init>(ILjava/lang/String;Z)V

    invoke-interface {p2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x4000

    invoke-virtual {v1, p2}, Lcom/android/server/am/wtn;->zta(I)V

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v3, v1, Lcom/android/server/am/wtn;->zta:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    :cond_2
    iget-object v3, v1, Lcom/android/server/am/wtn;->you:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mAppRecordMap:Ljava/util/HashMap;

    iget v1, v1, Lcom/android/server/am/wtn;->zta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_1
    const-string p2, "initAppRecord  item info is null!"

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public initEnv(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "AppRecordManager"

    const-string p1, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mUidObserver:Lcom/android/server/am/AppRecordManagerService$UidObserver;

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppRecordManagerService;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->registerGeneralReceiver()V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->registerBluetoothReceiver()V

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mTouchWindowListener:Lcom/android/server/am/AppRecordManagerService$cno;

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusUtil$you;->ywr(Lcom/android/server/OnePlusUtil$you$sis;)V

    invoke-static {}, Lcom/android/server/ywr;->gwm()Lcom/android/server/ywr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ywr;->vdb(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mSensorMap:Ljava/util/HashMap;

    const/16 v1, -0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GPS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_ORM:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->ORM_FEATURE_ENABLE:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/SocketTransition;->getInstance()Lcom/android/server/am/SocketTransition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/SocketTransition;->initOMMAppRecord(Landroid/content/Context;)V

    :cond_2
    sget-boolean p1, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_ORM:Z

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/am/c;->tsu()Lcom/android/server/am/c;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/am/c;->ssp(Landroid/content/Context;)V

    :cond_3
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mOMMFrontMonitor:Lcom/android/server/am/AppRecordManagerService$rtg;

    invoke-virtual {p1, v0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    sget-object v0, Lcom/android/server/am/zta;->zta:Lcom/android/server/am/zta;

    invoke-virtual {p1, v0}, Lcom/android/server/OnePlusUtil$zta;->kth(Lcom/android/server/OnePlusUtil$zta$zta;)V

    new-instance p1, Lcom/android/server/am/AppRecordManagerService$tsu;

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/AppRecordManagerService$tsu;-><init>(Lcom/android/server/am/AppRecordManagerService;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mLockedTasksContentObserver:Lcom/android/server/am/AppRecordManagerService$tsu;

    invoke-virtual {p0}, Lcom/android/server/am/AppRecordManagerService;->ensureAndUpdateLockedTasksInfoObserver()V

    invoke-direct {p0}, Lcom/android/server/am/AppRecordManagerService;->registerNotificationListenerService()V

    return-void
.end method

.method public isApp(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/wtn;

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->dma()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isIsolatedUid(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isSystemApp(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public noteBluetoothConnectedChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/wtn;->qbh(Ljava/lang/String;Z)V

    return-void
.end method

.method public noteFlashlightOff(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->oif()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteFlashlightOn(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->bvj()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteFloatWindowChange(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/wtn;->ibl(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public noteFreezeStateChange(IZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/wtn;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/wtn;->gwm(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteFrontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 11

    move-object v0, p0

    move-object v9, p1

    move v10, p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v1

    const/4 v8, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/wtn;->ugm(Ljava/lang/String;IILjava/lang/String;IIZ)V

    move-object v4, p4

    move/from16 v5, p5

    invoke-virtual {p0, v5, p4}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/wtn;->ugm(Ljava/lang/String;IILjava/lang/String;IIZ)V

    return-void
.end method

.method public noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/AppRecordManagerService;->mHighusedDebug:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/android/server/am/wtn;->vdb(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/wtn;->vdb(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "noteHighUsedAppChanged mHighWhitelist = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mHighWhitelist:Ljava/util/ArrayList;

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/qbh;->sis(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService;->mPrehighResult:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/android/server/am/wtn;->vdb(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_8
    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService;->mPrehighResult:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/wtn;->vdb(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_a
    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService;->mPrehighResult:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "noteHighUsedAppChanged mPrehighResult = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPrehighResult:Ljava/util/ArrayList;

    goto :goto_3

    :cond_b
    :goto_6
    return-void
.end method

.method public noteNotificationChanged(Ljava/lang/String;IIZ)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/wtn;->zgw(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public notePSSChanged(IIJ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->igw()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/wtn;->ssp(I)Lcom/android/server/am/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/am/h;->ywr(J)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/wtn;->obl(IIJ)V

    :cond_0
    return-void
.end method

.method public notePauseGps(ILjava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/wtn;->oxb(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notePauseGps(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/wtn;->oxb(Ljava/lang/String;Z)V

    return-void
.end method

.method public notePredctionAppChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/wtn;->cjf(Ljava/lang/String;Z)V

    return-void
.end method

.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 8

    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/wtn;->ear(IILjava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method public noteResetAudio()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetAudio ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetCamera()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetCamera ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetFlashlight()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetFlashlight ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteResetVideo()V
    .locals 1

    const/4 p0, 0x1

    const-string v0, " noteResetVideo ------------ * "

    invoke-static {p0, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    return-void
.end method

.method public noteRfcommSocketToServiceRecord(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothList:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mBluetoothList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/wtn;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/wtn;->veq(Z)V

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

.method public noteStartAudio(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->cgv()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStartAudio(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/wtn;->vju(I)V

    return-void
.end method

.method public noteStartCamera(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->bud()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStartGps(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/am/wtn;->les(Ljava/lang/String;J)V

    return-void
.end method

.method public noteStartSensor(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1, p2}, Lcom/android/server/am/wtn;->irq(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStartTraffic(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->vdw()V

    return-void
.end method

.method public noteStartTrafficHigh(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->qeg()V

    return-void
.end method

.method public noteStartVideo(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->ivd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStartVideo(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/wtn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/wtn;->a(I)V

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->rtg()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->notifySystemUIVideoChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public noteStopAudio(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStopAudio(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/wtn;->c(I)V

    return-void
.end method

.method public noteStopCamera(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStopGps(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(Ljava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/wtn;->e(Ljava/lang/String;)V

    return-void
.end method

.method public noteStopSensor(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1, p2}, Lcom/android/server/am/wtn;->f(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteStopTraffic(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->g()V

    return-void
.end method

.method public noteStopTrafficHigh(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/wtn;->h()V

    return-void
.end method

.method public noteStopVideo(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/wtn;

    invoke-virtual {v0}, Lcom/android/server/am/wtn;->i()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppRecordManagerService;->notifySystemUIVideoChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public noteStopVideo(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(II)Lcom/android/server/am/wtn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/wtn;->j(I)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppRecordManagerService;->notifySystemUIVideoChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public noteUserLockAppChanged(Ljava/lang/String;IZ)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidsFromPackageName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p2, v4, :cond_0

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, -0x3e8

    :goto_1
    if-lt v2, v3, :cond_2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/am/wtn;->k(Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method public noteVibratorOff(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1}, Lcom/android/server/am/wtn;->l()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public noteVibratorOn(IJ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/wtn;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/wtn;->m(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processDie(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDie ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object p0

    iget p2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->killReason:I

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/am/wtn;->s(III)V

    return-void
.end method

.method public processStart(Lcom/android/server/am/ProcessRecord;I)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsInit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->OP_FEATURE_ORM:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/AppRecordManagerService;->ORM_FEATURE_ENABLE:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SocketTransition;->getInstance()Lcom/android/server/am/SocketTransition;

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/am/AppRecordManagerService;->mIsInit:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStart ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/wtn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/wtn;->cno()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/AppRecordManagerService;->getPreUserLockList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    aget-object v5, v6, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Lcom/android/server/am/wtn;->zta(I)V

    move v4, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/am/AppRecordManagerService;->isHighUsedApp(Ljava/lang/String;)Z

    move-result p0

    move v2, p0

    move p0, v4

    goto :goto_2

    :cond_5
    move p0, v4

    move v2, p0

    :goto_2
    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    iget v7, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v3, v0

    move v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/wtn;->t(ILjava/lang/String;ZILjava/lang/String;)V

    if-eqz p0, :cond_6

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 p2, 0x3e8

    if-lt p0, p2, :cond_6

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/server/am/wtn;->k(Ljava/lang/String;IZ)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/wtn;->vdb(Ljava/lang/String;Z)V

    :cond_7
    return-void
.end method

.method public removeIsolatedUid(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeIsolatedUid [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "(appUid)]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/AppRecordManagerService;->myLog(ILjava/lang/String;)V

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService;->mIsolatedUids:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/wtn;

    invoke-virtual {v1, p1}, Lcom/android/server/am/wtn;->v(I)V

    goto :goto_0

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

.method removePosted(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService;->mPosted:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/AppRecordManagerService;->mPosted:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService;->mPosted:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public schedulePerformPoll()V
    .locals 0

    invoke-static {}, Lcom/android/server/ywr;->gwm()Lcom/android/server/ywr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/ywr;->obl()V

    return-void
.end method
