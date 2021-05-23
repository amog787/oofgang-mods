.class public Lcom/android/server/am/OpForceDarkController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpForceDarkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OpForceDarkController$cno;,
        Lcom/android/server/am/OpForceDarkController$ssp;,
        Lcom/android/server/am/OpForceDarkController$bio;,
        Lcom/android/server/am/OpForceDarkController$kth;
    }
.end annotation


# static fields
.field private static final CONFIG_CONTENT:Ljava/lang/String; = "content"

.field private static final CONFIG_PRJ:Ljava/lang/String; = "projectname"

.field private static final CONFIG_SYS_VER_CODE:Ljava/lang/String; = "sysVersionCode"

.field private static final CONFIG_SYS_VER_DESC:Ljava/lang/String; = "sysVersionDesc"

.field private static final DBG:Z

.field private static final DBG_DETAIL:Z

.field private static final KEY_APP_FALLBACK_CFG:Ljava/lang/String; = "fallback"

.field private static final KEY_APP_PRIVILEGED:Ljava/lang/String; = "privileged"

.field private static final KEY_COMPAT_VERS_CODE:Ljava/lang/String; = "compatVers"

.field private static final KEY_CONFIG_VER_LIST:Ljava/lang/String; = "configs"

.field private static final KEY_FUNC_ENABLE:Ljava/lang/String; = "enable"

.field private static final KEY_GLOBAL_CONFIG:Ljava/lang/String; = "OnePlus.ForceDark.Global.Config.DEFAULT"

.field private static final KEY_HIGH_FREQ:Ljava/lang/String; = "persist.oneplus.debug.fd_log_high"

.field private static final KEY_JS_INJECT:Ljava/lang/String; = "jsInject"

.field private static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field private static final KEY_SPECIAL_ACTION:Ljava/lang/String; = "specialActions"

.field private static final KEY_SW_DARK:Ljava/lang/String; = "swDark"

.field private static final KEY_SW_ENHANCE:Ljava/lang/String; = "swEnhance"

.field private static final OPFD_CONFIG_NAME:Ljava/lang/String; = "OnePlusForceDarkConfig"

.field private static final STATE_OFF:I = 0x0

.field private static final STATE_ON:I = 0x1

.field private static final STATE_UNSPEC:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OPFD_CTRL_SVC"

.field static sDevHighFreqLogEnable:Z


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private final mConfigLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

.field private final mGlobalFallbackConfig:Lcom/android/server/am/OpForceDarkController$cno;

.field private mHandler:Landroid/os/Handler;

.field private mIsInit:Z

.field private mLastChangeTime:J

.field private final mOnOffObserver:Landroid/database/ContentObserver;

.field private mOnlineFetched:Z

.field private mPM:Landroid/content/pm/IPackageManager;

.field private final mPrivilegedApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRawOnlineConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OpForceDarkController$ssp;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefinedEffectiveConfigs:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OpForceDarkController$ssp;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpecialVisibleApps:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSysVersionCode:I

.field private mVersionDesc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OpForceDarkController;->DBG:Z

    const-string v0, "persist.oneplus.debug.fd_log_high"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OpForceDarkController;->sDevHighFreqLogEnable:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OpForceDarkController;->sDevHighFreqLogEnable:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/server/am/OpForceDarkController;->DBG_DETAIL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OpForceDarkController;->mOnlineFetched:Z

    iput-boolean v0, p0, Lcom/android/server/am/OpForceDarkController;->mIsInit:Z

    iput v0, p0, Lcom/android/server/am/OpForceDarkController;->mSysVersionCode:I

    new-instance v0, Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-direct {v0, p0}, Lcom/android/server/am/OpForceDarkController$ssp;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

    new-instance v0, Lcom/android/server/am/OpForceDarkController$cno;

    invoke-direct {v0, p0}, Lcom/android/server/am/OpForceDarkController$cno;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mGlobalFallbackConfig:Lcom/android/server/am/OpForceDarkController$cno;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mRawOnlineConfigs:Ljava/util/HashMap;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mConfigLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mPrivilegedApps:Ljava/util/HashSet;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/OpForceDarkController;->mLastChangeTime:J

    new-instance v0, Lcom/android/server/am/OpForceDarkController$zta;

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OpForceDarkController$zta;-><init>(Lcom/android/server/am/OpForceDarkController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mOnOffObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/am/OpForceDarkController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OpForceDarkController$2;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mSpecialVisibleApps:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OpForceDarkController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OpForceDarkController;->mLastChangeTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/server/am/OpForceDarkController;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OpForceDarkController;->mLastChangeTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/am/OpForceDarkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->killAbnormalApp()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OpForceDarkController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->scheduleFetchConfig(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->handleFetchConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/am/OpForceDarkController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->updateAppOps()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OpForceDarkController;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->handlePackageChange(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OpForceDarkController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OpForceDarkController;Lcom/android/server/am/OpForceDarkController$ssp;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->scheduleNotifyChangedApp(Lcom/android/server/am/OpForceDarkController$ssp;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/OpForceDarkController;)Lcom/android/server/am/OpForceDarkController$cno;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mGlobalFallbackConfig:Lcom/android/server/am/OpForceDarkController$cno;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OpForceDarkController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mConfigLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/am/OpForceDarkController;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mPrivilegedApps:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->getVersionCode(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/am/OpForceDarkController;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;I)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->findTargetAppThread(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/am/OpForceDarkController;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->setViewRootFlags(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)Lcom/android/server/am/OpForceDarkController$ssp;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->getEffectiveConfigForApp(Ljava/lang/String;Z)Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/am/OpForceDarkController;)Landroid/app/AppOpsManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->hasEnableParallel(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private debugGetStateDesc(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p0, "Unknown"

    return-object p0

    :pswitch_0
    const-string p0, "USER_UNSPEC_CONFIG_UNSPEC"

    return-object p0

    :pswitch_1
    const-string p0, "USER_UNSPEC_CONFIG_OFF"

    return-object p0

    :pswitch_2
    const-string p0, "USER_UNSPEC_CONFIG_ON"

    return-object p0

    :pswitch_3
    const-string p0, "USER_OFF_CONFIG_UNSPEC"

    return-object p0

    :pswitch_4
    const-string p0, "USER_OFF_CONFIG_OFF"

    return-object p0

    :pswitch_5
    const-string p0, "USER_OFF_CONFIG_ON"

    return-object p0

    :pswitch_6
    const-string p0, "USER_ON_CONFIG_UNSPEC"

    return-object p0

    :pswitch_7
    const-string p0, "USER_ON_CONFIG_OFF"

    return-object p0

    :pswitch_8
    const-string p0, "USER_ON_CONFIG_ON"

    return-object p0

    :cond_0
    const-string p0, "MODE_IGNORED"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private debugLog(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    sget-boolean p0, Lcom/android/server/am/OpForceDarkController;->DBG_DETAIL:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "OPFD_CTRL_SVC"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private fetchLocalDefaultConfigs()V
    .locals 7

    const-string v0, "OPFD_CTRL_SVC"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->readLocalConfigJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    const-string v5, "projectname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "OnePlusForceDarkConfig"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v1, "content"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/am/OpForceDarkController;->parseGlobalDefConfig(Lorg/json/JSONArray;)V

    invoke-direct {p0, v1}, Lcom/android/server/am/OpForceDarkController;->parseAppsConfig(Lorg/json/JSONArray;)V

    const-string p0, "Fetch Local Config Done----------------"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Local Default Configs Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private findTargetAppThread(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/app/IApplicationThread;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->isUserVisibleApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, p2, :cond_2

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Find Prcess For "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_pkgUid  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", UserID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_2
    return-object v0
.end method

.method private getAllPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mPM:Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private getCopyOfRawConfigForApp(Ljava/lang/String;)Lcom/android/server/am/OpForceDarkController$ssp;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mRawOnlineConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OpForceDarkController$ssp;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : UnSpec, Use Global Def"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-virtual {p0}, Lcom/android/server/am/OpForceDarkController$ssp;->you()Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OpForceDarkController$ssp;->gwm(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/OpForceDarkController$ssp;->you()Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController$ssp;->zta(Lcom/android/server/am/OpForceDarkController$ssp;)V

    return-object p0
.end method

.method private getEffectiveConfigForApp(Ljava/lang/String;Z)Lcom/android/server/am/OpForceDarkController$ssp;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OpForceDarkController$ssp;

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OpForceDarkController;->updatePkgAppOpsForUser(Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/OpForceDarkController$ssp;

    move-object v1, p2

    :cond_0
    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-virtual {p0}, Lcom/android/server/am/OpForceDarkController$ssp;->you()Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/OpForceDarkController$ssp;->gwm(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getPackageUid(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private getUserVisiblePackages()Ljava/util/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "UserVisible Count: "

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController;->mSpecialVisibleApps:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    throw v3

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return-object v1
.end method

.method private getVersionCode(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget p0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :: Get Version Code Exception "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return v1
.end method

.method private handleFetchConfig(Ljava/lang/String;)V
    .locals 3

    const-string v0, "handleFetchConfig"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/am/OpForceDarkController;->mOnlineFetched:Z

    const/4 v1, 0x1

    const-string v2, "OPFD_CTRL_SVC"

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    :cond_1
    const-string p1, "Invalid Online Configs, init with Local Default Configs"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->fetchLocalDefaultConfigs()V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->parseGlobalDefConfig(Lorg/json/JSONArray;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->parseAppsConfig(Lorg/json/JSONArray;)V

    const-string p1, "Update Config Done----------------"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/am/OpForceDarkController;->mOnlineFetched:Z

    :cond_3
    return-void
.end method

.method private handlePackageChange(Landroid/os/Message;)V
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pkgChangeAction"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_3
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/OpForceDarkController;->updatePkgAppOpsForUser(Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x304ed112 -> :sswitch_3
        0xa480416 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasEnableParallel(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private initAppOps()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/android/server/am/OpForceDarkController$sis;

    invoke-direct {v0, p0}, Lcom/android/server/am/OpForceDarkController$sis;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    iput-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->registerAppOpsChangeListener()V

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/android/server/am/OpForceDarkController$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/am/OpForceDarkController$tsu;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    const-string v4, "OnePlusForceDarkConfig"

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/OpForceDarkController;->scheduleFetchConfig(Z)V

    return-void
.end method

.method private isForceDarkMode(Landroid/content/Context;)Z
    .locals 0

    const-string p0, "uimode"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getForceDark()Z

    move-result p0

    return p0
.end method

.method private isNewDifferentConfig(Lcom/android/server/am/OpForceDarkController$ssp;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/android/server/am/OpForceDarkController$ssp;->wtn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OpForceDarkController$ssp;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OpForceDarkController$ssp;->tsu(Lcom/android/server/am/OpForceDarkController$ssp;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isNightMode(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPrivileged(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mPrivilegedApps:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method private isUserVisibleApplication(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mSpecialVisibleApps:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :catch_0
    :cond_2
    return v0
.end method

.method private killAbnormalApp()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/am/OpForceDarkController;->killPidForce(Ljava/util/ArrayList;)V

    return-void
.end method

.method private killPidForce(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "Force Dark Change Too Quickly"

    const/4 v4, 0x1

    invoke-virtual {v1, p1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change Too Quickly. Kill Apps "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "killPidForce Ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    :goto_2
    return-void
.end method

.method private parseAppsConfig(Lorg/json/JSONArray;)V
    .locals 6

    const-string v0, "parseJSON Success Count: "

    const-string v1, "OPFD_CTRL_SVC"

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController;->mRawOnlineConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-direct {v4, p0}, Lcom/android/server/am/OpForceDarkController$ssp;-><init>(Lcom/android/server/am/OpForceDarkController;)V

    invoke-virtual {v4, v3}, Lcom/android/server/am/OpForceDarkController$ssp;->bvj(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController;->mRawOnlineConfigs:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/server/am/OpForceDarkController$ssp;->wtn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/server/am/OpForceDarkController;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mRawOnlineConfigs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string v2, "parseJSON Exception:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p1, Lcom/android/server/am/OpForceDarkController;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    const-string v2, "parseJSON JSONException:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p1, Lcom/android/server/am/OpForceDarkController;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    sget-boolean v2, Lcom/android/server/am/OpForceDarkController;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mRawOnlineConfigs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw p1
.end method

.method private parseGlobalDefConfig(Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pkgName"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "OnePlus.ForceDark.Global.Config.DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-virtual {p1, v2}, Lcom/android/server/am/OpForceDarkController$ssp;->bvj(Lorg/json/JSONObject;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPFD Global Config:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

    invoke-virtual {v1}, Lcom/android/server/am/OpForceDarkController$ssp;->sis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse Global DefConfig Exception: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPFD_CTRL_SVC"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private parseOPFDVersionCode()V
    .locals 6

    const-string v0, "OPFD_CTRL_SVC"

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->readLocalConfigJsonString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    const-string v4, "projectname"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "OnePlusForceDarkConfig"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "sysVersionCode"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OpForceDarkController;->mSysVersionCode:I

    const-string v1, "sysVersionDesc"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mVersionDesc:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPFD Ver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OpForceDarkController;->mSysVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mVersionDesc:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Local Default Configs Ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private readLocalConfigJsonString()Ljava/lang/String;
    .locals 5

    const-string v0, "OPFD_CTRL_SVC"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/high16 v2, 0x50e0000

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v0

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v2

    move-object p0, v1

    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Local Default Configs Ex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p0, :cond_2

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_4

    :catch_4
    move-exception v2

    move-object p0, v1

    :goto_3
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Local Default Configs IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_2

    goto :goto_2

    :catch_5
    :cond_2
    :goto_4
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :cond_3
    throw v0
.end method

.method private registerAppOpsChangeListener()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->getUserVisiblePackages()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x3f2

    iget-object v4, p0, Lcom/android/server/am/OpForceDarkController;->mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private scheduleFetchConfig(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/server/am/OpForceDarkController;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "OPFD_CTRL_SVC"

    const-string p1, "skip fetch config"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private scheduleNotifyChangedApp(Lcom/android/server/am/OpForceDarkController$ssp;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/am/OpForceDarkController$kth;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/OpForceDarkController$kth;-><init>(Lcom/android/server/am/OpForceDarkController;Lcom/android/server/am/OpForceDarkController$ssp;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private scheduleUpdateAppOpsDelay(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/OpForceDarkController;->mIsInit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oneplus.intent.action.RESET_ALL_MODES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OpForceDarkController$rtg;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/OpForceDarkController$rtg;-><init>(Lcom/android/server/am/OpForceDarkController;J)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method

.method private setViewRootFlags(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->opGetViewRootConfigHolder()Landroid/view/OpViewRootConfigHolder;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Landroid/view/OpViewRootConfigHolder;

    invoke-direct {p1}, Landroid/view/OpViewRootConfigHolder;-><init>()V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/OpViewRootConfigHolder;->sysForceONOFF(Z)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->onReceiveOpConfig(Landroid/view/OpViewRootConfigHolder;Z)V

    return-void
.end method

.method private shouldForceDarkStartingWindow(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->getEffectiveConfigForApp(Ljava/lang/String;Z)Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/am/OpForceDarkController;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/am/OpForceDarkController;->isForceDarkMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1, p2}, Lcom/android/server/am/OpForceDarkController$ssp;->kth(I)Lcom/android/server/am/OpForceDarkController$cno;

    move-result-object p2

    iget p2, p2, Lcom/android/server/am/OpForceDarkController$cno;->sis:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->isPrivileged(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0
.end method

.method private startWatchChange(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "op_force_dark_mode"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mOnOffObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateAppOps()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->getUserVisiblePackages()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OpForceDarkController;->updatePkgAppOpsForUser(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/server/am/OpForceDarkController;->hasEnableParallel(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3e7

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OpForceDarkController;->updatePkgAppOpsForUser(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p0, "OPFD_CTRL_SVC"

    const-string v0, "Get Visible Packages: NULL"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePkgAppOps(Ljava/lang/String;II)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->isPrivileged(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/OpForceDarkController;->updatePkgAppOpsForUser(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x3f2

    invoke-virtual {v1, v2, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v1, v3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", drop "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object p3, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {p3, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2, p2, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->getCopyOfRawConfigForApp(Ljava/lang/String;)Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/android/server/am/OpForceDarkController$ssp;->ugm(II)I

    move-result v4

    if-ne v4, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/am/OpForceDarkController;->isNewDifferentConfig(Lcom/android/server/am/OpForceDarkController$ssp;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x3e7

    if-ne p3, v3, :cond_6

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OpForceDarkController;->scheduleNotifyChangedApp(Lcom/android/server/am/OpForceDarkController$ssp;I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p3, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    monitor-enter p3

    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {v0}, Lcom/android/server/am/OpForceDarkController$ssp;->wtn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add Efftive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/OpForceDarkController$ssp;->sis()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Current Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OpForceDarkController;->mRefinedEffectiveConfigs:Landroid/util/LruCache;

    invoke-virtual {v6}, Landroid/util/LruCache;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_6
    :goto_2
    if-eq v4, v1, :cond_7

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v2, p2, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_7
    :goto_3
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method private updatePkgAppOpsForUser(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController;->mAppOps:Landroid/app/AppOpsManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/OpForceDarkController;->updatePkgAppOps(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateAppOpsForUser Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPFD_CTRL_SVC"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method debugTriStateDesc(I)Ljava/lang/String;
    .locals 0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    const-string p0, "UNSPEC"

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    const-string p0, "ON"

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "OFF"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method public dispatchForceDarkConfig(Landroid/app/IApplicationThread;Landroid/content/pm/ApplicationInfo;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OpForceDarkController;->isUserVisibleApplication(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OpForceDarkController;->isPrivileged(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/am/OpForceDarkController;->mIsInit:Z

    if-nez v1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip dispatch, Not Init."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip Dispatch To Sub-Process. Name = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return-void

    :cond_3
    :try_start_0
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OpForceDarkController;->getEffectiveConfigForApp(Ljava/lang/String;Z)Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object v1

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/OpForceDarkController$ssp;->ssp(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Dispatch Config to %s , uid %d, config %s "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v0

    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    invoke-interface {p1, v1}, Landroid/app/IApplicationThread;->dispatchForceDarkConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dispatch Config Exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Target = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPFD_CTRL_SVC"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore App "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "Skip dispatch. Null appThread/appInfo"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/am/OpForceDarkController;->shouldForceDarkStartingWindow(Ljava/lang/String;I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[1]handle Starting Window for { "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " }, Dark? "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->setViewRootFlags(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/server/am/OpForceDarkController$you;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/server/am/OpForceDarkController$you;-><init>(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;ZLandroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "handle Starting Window Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPFD_CTRL_SVC"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/IPackageManager;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/server/am/OpForceDarkController;->mIsInit:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    const-string v0, "OPFD_CTRL_SVC Init."

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    iget-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/am/OpForceDarkController;->mPM:Landroid/content/pm/IPackageManager;

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    new-instance p1, Lcom/android/server/am/OpForceDarkController$bio;

    iget-object p2, p0, Lcom/android/server/am/OpForceDarkController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OpForceDarkController$bio;-><init>(Lcom/android/server/am/OpForceDarkController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mGeneralAppConfig:Lcom/android/server/am/OpForceDarkController$ssp;

    const-string p2, "OnePlus.ForceDark.Global.Config.DEFAULT"

    invoke-virtual {p1, p2}, Lcom/android/server/am/OpForceDarkController$ssp;->gwm(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mGlobalFallbackConfig:Lcom/android/server/am/OpForceDarkController$cno;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/am/OpForceDarkController$cno;->zta:Z

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->parseOPFDVersionCode()V

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->initOnlineConfig()V

    invoke-direct {p0}, Lcom/android/server/am/OpForceDarkController;->initAppOps()V

    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OpForceDarkController;->scheduleUpdateAppOpsDelay(J)V

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->startWatchChange(Landroid/content/Context;)V

    iput-boolean p2, p0, Lcom/android/server/am/OpForceDarkController;->mIsInit:Z

    return-void
.end method

.method public notifyPackageChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/OpForceDarkController;->isUserVisibleApplication(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify Package Changed { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " } uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isVisiblePkg ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OpForceDarkController;->debugLog(Ljava/lang/String;Z)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pkgName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pkgChangeAction"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "uid"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
