.class public final Lcom/oneplus/security/SecureService;
.super Landroid/app/Service;
.source "SecureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/security/SecureService$NetworkChangeReceive;,
        Lcom/oneplus/security/SecureService$AsynHandler;
    }
.end annotation


# instance fields
.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private mBootDataTimeReceiver:Lcom/oneplus/security/receiver/BootDataTimeReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mNetworkChangeReceive:Lcom/oneplus/security/SecureService$NetworkChangeReceive;

.field private mNetworkManagementService:Landroid/os/INetworkManagementService;

.field private mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 186
    new-instance v0, Lcom/oneplus/security/SecureService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/security/SecureService$1;-><init>(Lcom/oneplus/security/SecureService;)V

    iput-object v0, p0, Lcom/oneplus/security/SecureService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/security/SecureService;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/oneplus/security/SecureService;->initDataUsageAlertSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/security/SecureService;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/oneplus/security/SecureService;->initDataUsageAlertSettings(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/security/SecureService;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/security/SecureService;)Landroid/os/Handler;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/oneplus/security/SecureService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private initDataUsageAlertSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0}, Lcom/oneplus/security/SecureService;->initDataUsageAlertSettings(I)V

    const/4 v0, 0x1

    .line 267
    invoke-direct {p0, v0}, Lcom/oneplus/security/SecureService;->initDataUsageAlertSettings(I)V

    return-void
.end method

.method private initDataUsageAlertSettings(I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 271
    iget-object v2, v0, Lcom/oneplus/security/SecureService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v2, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimInserted(I)Z

    move-result v2

    const-string v3, "SecureService"

    if-nez v2, :cond_0

    const-string v0, "initDataUsageAlertSettings: not card "

    .line 272
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    iget-object v2, v0, Lcom/oneplus/security/SecureService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v2, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotSimReady(I)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 279
    :cond_1
    iget-object v2, v0, Lcom/oneplus/security/SecureService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v2, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->isSlotOperatorSupportedBySdk(I)Z

    .line 280
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/security/network/operator/OperatorDataModelFactory;->getOperatorDataModel(Landroid/content/Context;)Lcom/oneplus/security/network/operator/OperatorModelInterface;

    move-result-object v2

    .line 281
    invoke-interface {v2, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getAccountDay(I)I

    move-result v4

    .line 282
    iget-object v5, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_3

    .line 286
    iget-object v10, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v10, v1, v8, v9}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getSystemDataLimitValue(Landroid/content/Context;IJ)J

    move-result-wide v10

    .line 287
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "limitByte one: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v12, v10, v8

    if-nez v12, :cond_2

    .line 289
    invoke-interface {v2, v1}, Lcom/oneplus/security/network/operator/OperatorModelInterface;->getPkgTotalInByte(I)J

    move-result-wide v10

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "limitByte two: "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    cmp-long v2, v10, v6

    if-gez v2, :cond_4

    move-wide v10, v6

    goto :goto_0

    :cond_3
    move-wide v10, v8

    .line 296
    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v2, v12, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 298
    iget-object v13, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v13, v1, v8, v9}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getSystemDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v13

    cmp-long v15, v13, v8

    if-nez v15, :cond_5

    .line 300
    iget-object v13, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v13, v1, v8, v9}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnValue(Landroid/content/Context;IJ)J

    move-result-wide v13

    :cond_5
    cmp-long v15, v13, v6

    if-gez v15, :cond_7

    move-wide v13, v6

    goto :goto_1

    :cond_6
    move-wide v13, v8

    .line 307
    :cond_7
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDataUsageAlertSettings: limitState = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "  limitByte =  "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDataUsageAlertSettings: warnState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   warnByte =  "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDataUsageAlertSettings: isTrafficRunningOutAlready "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v5, v12, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static/range {p1 .. p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result v2

    .line 311
    invoke-static {v2}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 312
    iget-object v5, v0, Lcom/oneplus/security/SecureService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-virtual {v5, v2, v13, v14}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 313
    iget-object v5, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v5, v12, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 314
    iget-object v1, v0, Lcom/oneplus/security/SecureService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-virtual {v1, v2, v8, v9}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-string v1, "setPolicyLimitBytes: Already exist "

    .line 315
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 318
    :cond_8
    iget-object v5, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/oneplus/security/network/operator/PkgInfoLocalCache;->getPkgUsedMonthlyLocalCache(Landroid/content/Context;I)J

    move-result-wide v5

    .line 319
    invoke-static {}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getTrafficModelInstance()Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 322
    invoke-interface {v7, v1, v5, v6, v12}, Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;->getExtraDataUsage(IJZ)J

    move-result-wide v12

    move-wide/from16 v16, v12

    goto :goto_2

    :cond_9
    const-string v1, "mNativeTrafficDataModel is null ,not load extra data usage"

    .line 324
    invoke-static {v3, v1}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v16, 0x0

    :goto_2
    cmp-long v1, v5, v8

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const-wide/16 v7, 0x400

    mul-long/2addr v5, v7

    add-long v16, v5, v16

    :goto_3
    move-wide/from16 v5, v16

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "usedInByte: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, v0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmIntentService;->startService(Landroid/content/Context;)V

    .line 330
    iget-object v1, v0, Lcom/oneplus/security/SecureService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-virtual {v1, v2, v10, v11}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initDataUsageAlertSettings: limitByte "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "setPolicyLimitBytes: NO Already exist "

    .line 332
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_4
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iget-object v1, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 335
    iget-object v0, v0, Lcom/oneplus/security/SecureService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-virtual {v0, v2, v4, v1}, Lcom/oneplus/security/network/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    return-void
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/SecureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
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

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static startServiceForDataUsage(Landroid/content/Context;I)V
    .locals 3

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/SecureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "arg_task"

    const-string v2, "com.oneplus.security.task.INIT_DATAUSAGE_ALERT_SETTINGS"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "arg_parameter_slotid"

    .line 103
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 144
    iput-object p0, p0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    .line 145
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecureService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/security/SecureService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 146
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 147
    new-instance v0, Lcom/oneplus/security/SecureService$AsynHandler;

    iget-object v2, p0, Lcom/oneplus/security/SecureService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/oneplus/security/SecureService$AsynHandler;-><init>(Landroid/os/Looper;Lcom/oneplus/security/SecureService;)V

    iput-object v0, p0, Lcom/oneplus/security/SecureService;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    const-string v0, "network_management"

    .line 151
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/SecureService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/security/SecureService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 160
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    .line 162
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    .line 163
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    new-instance v2, Lcom/oneplus/security/SecureService$NetworkChangeReceive;

    invoke-direct {v2, p0}, Lcom/oneplus/security/SecureService$NetworkChangeReceive;-><init>(Lcom/oneplus/security/SecureService;)V

    iput-object v2, p0, Lcom/oneplus/security/SecureService;->mNetworkChangeReceive:Lcom/oneplus/security/SecureService$NetworkChangeReceive;

    .line 166
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/security/SecureService;->mNetworkChangeReceive:Lcom/oneplus/security/SecureService$NetworkChangeReceive;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.TIME_SET"

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    new-instance v2, Lcom/oneplus/security/receiver/BootDataTimeReceiver;

    invoke-direct {v2}, Lcom/oneplus/security/receiver/BootDataTimeReceiver;-><init>()V

    iput-object v2, p0, Lcom/oneplus/security/SecureService;->mBootDataTimeReceiver:Lcom/oneplus/security/receiver/BootDataTimeReceiver;

    .line 172
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/security/SecureService;->mBootDataTimeReceiver:Lcom/oneplus/security/receiver/BootDataTimeReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/SecureService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 176
    new-instance v2, Lcom/oneplus/security/network/NetworkPolicyEditor;

    invoke-direct {v2, v0}, Lcom/oneplus/security/network/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/oneplus/security/SecureService;->mPolicyEditor:Lcom/oneplus/security/network/NetworkPolicyEditor;

    .line 177
    invoke-virtual {v2}, Lcom/oneplus/security/network/NetworkPolicyEditor;->read()V

    .line 178
    iget-object v0, p0, Lcom/oneplus/security/SecureService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/SecureService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    const/4 p0, 0x0

    .line 179
    invoke-interface {v0, p0}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->registerSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    const-string p0, "SecureService onCreate...."

    .line 180
    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/oneplus/security/SecureService;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 222
    iput-object v1, p0, Lcom/oneplus/security/SecureService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/oneplus/security/SecureService;->mNetworkManagementService:Landroid/os/INetworkManagementService;

    if-eqz v0, :cond_1

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/security/SecureService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/security/SecureService;->mNetworkChangeReceive:Lcom/oneplus/security/SecureService$NetworkChangeReceive;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/security/SecureService;->mBootDataTimeReceiver:Lcom/oneplus/security/receiver/BootDataTimeReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v0, "SecureService"

    const-string v2, "SecureService onDestroy...."

    .line 235
    invoke-static {v0, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/oneplus/security/SecureService;->mSimcardDataModel:Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;

    invoke-interface {v0, v1}, Lcom/oneplus/security/network/simcard/SimcardDataModelInterface;->removeSimStateListener(Lcom/oneplus/security/network/simcard/SimStateListener;)V

    .line 237
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 203
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    if-nez p1, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const-string p2, "arg_task"

    .line 204
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, "com.oneplus.security.task.INIT_DATAUSAGE_ALERT_SETTINGS"

    .line 205
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x4

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    const-string v0, "arg_parameter_slotid"

    .line 206
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 207
    iget-object p2, p0, Lcom/oneplus/security/SecureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 208
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 209
    iget-object p1, p0, Lcom/oneplus/security/SecureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object p0, p0, Lcom/oneplus/security/SecureService;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    const-string p1, "SecureService"

    const-string p2, "msg check notify sdk updated"

    .line 212
    invoke-static {p1, p2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/oneplus/security/SecureService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    const/4 p0, 0x1

    return p0
.end method
