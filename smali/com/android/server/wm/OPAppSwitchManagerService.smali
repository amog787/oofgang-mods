.class public Lcom/android/server/wm/OPAppSwitchManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/OPAppSwitchSettings$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OPAppSwitchManagerService$kth;,
        Lcom/android/server/wm/OPAppSwitchManagerService$bio;,
        Lcom/android/server/wm/OPAppSwitchManagerService$wtn;,
        Lcom/android/server/wm/OPAppSwitchManagerService$cno;,
        Lcom/android/server/wm/OPAppSwitchManagerService$ssp;,
        Lcom/android/server/wm/OPAppSwitchManagerService$igw;
    }
.end annotation


# static fields
.field private static final API:Ljava/lang/String; = "status"

.field public static final APPID:Ljava/lang/String; = "7554P2RV0X"

.field private static final DEBUG:Z

.field private static final KEY_OEM_SPLASH_ADS_ENABLE:Ljava/lang/String; = "oem_splash_ads_enable"

.field public static final MDM_NATIVE_EVENT:Ljava/lang/String; = "splash_switch"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_REBIND_INSTANT:I = 0x3

.field private static final MSG_REBIND_OPOS:I = 0x2

.field private static final OPOS_APP_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.opos.ads.ColorAppServicesManagerClient"

.field private static final SERVICE_ACTION_I:Ljava/lang/String; = "com.oneplus.instant.local.service.ColorAppServicesManagerClient"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.opos.ads.ColorAppServicesManagerClient"

.field private static final SERVICE_NAME_I:Ljava/lang/String; = "com.oneplus.instant.local.service.ColorAppServicesManagerClient"

.field private static final SERVICE_PACKAGE:Ljava/lang/String; = "com.opos.ads"

.field private static final SERVICE_PACKAGE_I:Ljava/lang/String; = "com.oneplus.instant.local.service"

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchManagerService"

.field private static final TAG_INSTANT:Ljava/lang/String; = "OPInstantAppDeviceManagerService"

.field private static final URI_OEM_SPLASH_ADS_ENABLE:Landroid/net/Uri;

.field private static bindInstantCount:I

.field private static bindOposCount:I

.field private static goingToPackageIsNull:Z

.field private static goingToPackageName:Ljava/lang/String;

.field private static leaveFromHeyTap:Z

.field private static mOpAdsEnable:Z

.field private static mOpAdsOn:Ljava/lang/String;

.field private static mOpAdsPermEnable:Z

.field private static mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private static sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;


# instance fields
.field private dangerousPerms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private iService:Landroid/os/IBinder;

.field private iServiceI:Landroid/os/IBinder;

.field private isBindInstantService:Z

.field private isBindOposService:Z

.field private mAm:Landroid/app/ActivityManager;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mCleanUpReceiver:Landroid/content/BroadcastReceiver;

.field private mColdStart:Z

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConnection:Lcom/android/server/wm/OPAppSwitchManagerService$igw;

.field private mConnectionI:Lcom/android/server/wm/OPAppSwitchManagerService$ssp;

.field private mContext:Landroid/content/Context;

.field private mDangerousPermList:[Ljava/lang/String;

.field private mGrantOposPerms:Z

.field private mHandler:Landroid/os/Handler;

.field private mIntercepters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OPAppSwitchStateDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mIsKeyBlocked:Z

.field private mLastActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mNotifyHandler:Landroid/os/Handler;

.field private mNotifyThread:Lcom/android/server/ServiceThread;

.field private mOpAdsSettingsOn:Z

.field private mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionManagerService:Landroid/permission/IPermissionManager;

.field private mScreenStateFile:Landroid/content/IntentFilter;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

.field private mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$wtn;

.field private nowTopr:Lcom/android/server/wm/ActivityRecord;

.field private permManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v0, "oem_splash_ads_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->URI_OEM_SPLASH_ADS_ENABLE:Landroid/net/Uri;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    const-string v0, "OpAdsOn"

    sput-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsOn:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->leaveFromHeyTap:Z

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageIsNull:Z

    const-string v1, ""

    sput-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageName:Ljava/lang/String;

    sput v0, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    sput v0, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->OPOS_APP_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->OPOS_APP_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->OPOS_APP_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->OPOS_APP_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->OPOS_APP_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>()V
    .locals 29

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIsKeyBlocked:Z

    iput-boolean v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->isBindOposService:Z

    iput-boolean v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->isBindInstantService:Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mScreenStateFile:Landroid/content/IntentFilter;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$zta;

    invoke-direct {v2, v0}, Lcom/android/server/wm/OPAppSwitchManagerService$zta;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V

    iput-object v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$igw;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$igw;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/OPAppSwitchManagerService$zta;)V

    iput-object v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConnection:Lcom/android/server/wm/OPAppSwitchManagerService$igw;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$ssp;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/OPAppSwitchManagerService$zta;)V

    iput-object v2, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConnectionI:Lcom/android/server/wm/OPAppSwitchManagerService$ssp;

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->permManagerInternal:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->dangerousPerms:Ljava/util/ArrayList;

    const-string v3, "android.permission.READ_CALENDAR"

    const-string v4, "android.permission.WRITE_CALENDAR"

    const-string v5, "android.permission.READ_CALL_LOG"

    const-string v6, "android.permission.WRITE_CALL_LOG"

    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v8, "android.permission.CAMERA"

    const-string v9, "android.permission.READ_CONTACTS"

    const-string v10, "android.permission.WRITE_CONTACTS"

    const-string v11, "android.permission.GET_ACCOUNTS"

    const-string v12, "android.permission.ACCESS_FINE_LOCATION"

    const-string v13, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v14, "android.permission.RECORD_AUDIO"

    const-string v15, "android.permission.READ_PHONE_STATE"

    const-string v16, "android.permission.READ_PHONE_NUMBERS"

    const-string v17, "android.permission.CALL_PHONE"

    const-string v18, "android.permission.ANSWER_PHONE_CALLS"

    const-string v19, "android.permission.ADD_VOICEMAIL"

    const-string v20, "android.permission.USE_SIP"

    const-string v21, "android.permission.BODY_SENSORS"

    const-string v22, "android.permission.SEND_SMS"

    const-string v23, "android.permission.RECEIVE_SMS"

    const-string v24, "android.permission.READ_SMS"

    const-string v25, "android.permission.RECEIVE_WAP_PUSH"

    const-string v26, "android.permission.RECEIVE_MMS"

    const-string v27, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v28, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array/range {v3 .. v28}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mDangerousPermList:[Ljava/lang/String;

    new-instance v1, Lcom/android/server/wm/OPAppSwitchManagerService$sis;

    invoke-direct {v1, v0}, Lcom/android/server/wm/OPAppSwitchManagerService$sis;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mCleanUpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/wm/OPAppSwitchManagerService$cno;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/OPAppSwitchManagerService$cno;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->iService:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->URI_OEM_SPLASH_ADS_ENABLE:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->iService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/OPAppSwitchManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/OPAppSwitchManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    return p1
.end method

.method static synthetic access$1200()Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object v0
.end method

.method static synthetic access$1202(Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    sput-object p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/OPAppSwitchManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mGrantOposPerms:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/OPAppSwitchManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mGrantOposPerms:Z

    return p1
.end method

.method static synthetic access$1400()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->OPOS_APP_PERMISSIONS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/permission/IPermissionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPermissionManagerService:Landroid/permission/IPermissionManager;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->onActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->onActivityResumed(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/OPAppSwitchManagerService;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->resolveOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->getGrantedAppPermissionsCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->iServiceI:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->iServiceI:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/OPAppSwitchManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getGrantedAppPermissionsCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 13

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGrantedAppPermissionsCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v2, :cond_e

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    array-length v6, v0

    move v7, v3

    move v8, v7

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v9, v0, v7

    invoke-virtual {p0, v9}, Lcom/android/server/wm/OPAppSwitchManagerService;->isInDangerousPermsList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, p1, v9, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    sget-boolean v11, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v10, v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    const/4 v9, -0x2

    if-ne v10, v9, :cond_4

    sget-boolean v9, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "getGrantedAppPermissionsCount -2, I don\'t know how to define this error !"

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dPermCout : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "res : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v8, :cond_8

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_7

    const-string p0, "there is no runtime permission request : ignore"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v2

    :cond_8
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-ne v8, v4, :cond_a

    if-eqz p0, :cond_9

    const-string p0, "we have granted all the runtime permission request : we don\'t care"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v2

    :cond_a
    if-nez v4, :cond_c

    if-eqz p0, :cond_b

    const-string p0, "this is the first time request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v3

    :cond_c
    if-eqz p0, :cond_d

    const-string p0, "this is not the first time request"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v5

    :cond_e
    :goto_2
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getting perm error : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v2, :cond_f

    move p1, v5

    goto :goto_3

    :cond_f
    move p1, v3

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_10

    move v3, v5

    :cond_10
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ":gcsdk"

    invoke-virtual {p2, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "gcsdk request permission, ignore it"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v2
.end method

.method public static getInstance()Lcom/android/server/wm/OPAppSwitchManagerService;
    .locals 2

    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/wm/OPAppSwitchManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OPAppSwitchManagerService;

    invoke-direct {v1}, Lcom/android/server/wm/OPAppSwitchManagerService;-><init>()V

    sput-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/server/wm/OPAppSwitchManagerService;->sInstance:Lcom/android/server/wm/OPAppSwitchManagerService;

    return-object v0
.end method

.method private hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 p0, -0x2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "OPAppSwitchManagerService"

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "grant this perm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "not grant this perm"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    sget-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "hasPermission -2, I don\'t know how to define this error !"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private isAllowToBind(Ljava/lang/String;)Z
    .locals 2

    const-string p0, "OPAppSwitchManagerService"

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isAllowToBind : true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isAllowToBind : false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private logHighlightD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p0, ""

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    const-string v2, "#"

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;)V
    .locals 6

    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getBlackList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchAppDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchActivityDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getConfigRuleInfos()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/OPAppSwitchManagerService;->matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method private matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/OPAppSwitchStateDispatcher;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OPAppSwitchRuleInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setBlackItem(Z)V

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setStaticRule(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V

    iget-object p0, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    iget-object p2, p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->pkgName:Ljava/lang/String;

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setDefaultMatchConfig(ZZ)V

    return-void
.end method

.method private notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyActivityEnter package =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyActivityExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 4

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityExit info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,className = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPAppSwitchManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  -----> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/OPAppSwitchManagerService;->logHighlightD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.heytap.market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.opos.ads"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sput-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->leaveFromHeyTap:Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyActivityExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_2

    :cond_3
    return-void
.end method

.method private notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAppEnter package = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private notifyAppExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->iService:Landroid/os/IBinder;

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "opos service is still alive, bf notify AppExit"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "opos service is died, bind again, bf notify AppExit"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposService()V

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAppExit package = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    const-string v4, "com.android.permissioncontroller"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/OPAppSwitchManagerService;->getGrantedAppPermissionsCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "perm count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-ltz v3, :cond_8

    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v4, :cond_7

    if-lez v3, :cond_6

    const-string v3, "app exit leave : get permission via com.android.permissioncontroller successfully, not the first time start"

    goto :goto_2

    :cond_6
    const-string v3, "app exit leave : get permission via com.android.permissioncontroller successfully, first time start"

    :goto_2
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->notifyAppExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_1

    :cond_8
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "app exit leave : get permission via com.android.permissioncontroller error ->return."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string v3, "app exit leave normally"

    goto :goto_2

    :cond_a
    return-void
.end method

.method private onActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appswitch onActivityPaused, pre = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nextResuming ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyActivityExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyAppExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_3
    return-void
.end method

.method private onActivityResumed(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appswitch onActivityResumed, r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "     mLastResumingActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "     mLastPausedActivity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyAppExit(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OPAppSwitchManagerService;->notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_7
    return-void
.end method

.method private resolveOnlineConfig(Lorg/json/JSONArray;)V
    .locals 6

    const-string p0, "name"

    const-string v0, "OPAppSwitchManagerService"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "value"

    if-eqz v3, :cond_1

    :try_start_1
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    :cond_1
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "perm_enable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "online config : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "perm control : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsPermEnable:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineConfig resolve error:"

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnlineConfig JSONException error:"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private updateAppSwitchConfig()V
    .locals 11

    new-instance v6, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getBlackList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchAppDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v8, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getMatchActivityDefaultList()Ljava/util/List;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    invoke-virtual {v0}, Lcom/android/server/wm/OPAppSwitchSettings;->getConfigRuleInfos()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-direct {v2, v1}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->setStaticRule(Lcom/android/server/wm/OPAppSwitchRuleInfo;)V

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/OPAppSwitchManagerService;->matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public bindInstantService()V
    .locals 12

    const-string v0, "give up binding instant service !"

    const-string v1, "OPAppSwitchManagerService"

    const-string v2, "OPInstantAppDeviceManagerService"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.oneplus.instant.local.service"

    const-string v6, "com.oneplus.instant.local.service.ColorAppServicesManagerClient"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x3

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x1

    :try_start_0
    invoke-direct {p0, v5}, Lcom/android/server/wm/OPAppSwitchManagerService;->isAllowToBind(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConnectionI:Lcom/android/server/wm/OPAppSwitchManagerService$ssp;

    invoke-virtual {v5, v3, v11, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v10, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->isBindInstantService:Z

    sput v9, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "bind instant service done!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "bind instant service fail! - > rebind it in 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v3, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    if-ge v3, v8, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget v3, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    add-int/2addr v3, v10

    sput v3, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    goto :goto_3

    :cond_3
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sput v9, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "bind instant service fail![Exception] - > rebind it in 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    if-ge v2, v8, :cond_6

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget p0, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    add-int/2addr p0, v10

    sput p0, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    goto :goto_3

    :cond_6
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_7

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sput v9, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    goto :goto_3

    :catch_1
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "bind instant service fail![SecurityException] - > rebind it in 1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindInstantCount:I

    if-ge v2, v8, :cond_9

    goto :goto_1

    :cond_9
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_a
    :goto_3
    return-void
.end method

.method public bindOposService()V
    .locals 11

    const-string v0, "give up binding opos service !"

    const-string v1, "OPAppSwitchManagerService"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.opos.ads"

    const-string v5, "com.opos.ads.ColorAppServicesManagerClient"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v5, 0x3e8

    const/4 v3, 0x2

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/wm/OPAppSwitchManagerService;->isAllowToBind(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConnection:Lcom/android/server/wm/OPAppSwitchManagerService$igw;

    invoke-virtual {v4, v2, v10, v9}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v9, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->isBindOposService:Z

    sput v8, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "bind opos service done!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "bind opos service fail! - > rebind it in 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    if-ge v2, v7, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    add-int/2addr v2, v9

    sput v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    goto :goto_3

    :cond_3
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_4

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sput v8, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "bind opos service fail![Exception] - > rebind it in 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    if-ge v2, v7, :cond_6

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget p0, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    add-int/2addr p0, v9

    sput p0, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    goto :goto_3

    :cond_6
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_7

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sput v8, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    goto :goto_3

    :catch_1
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "bind opos service fail![SecurityException] - > rebind it in 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget v2, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposCount:I

    if-ge v2, v7, :cond_9

    goto :goto_1

    :cond_9
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_7

    goto :goto_2

    :cond_a
    :goto_3
    return-void
.end method

.method public getAdsSettings()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ads settings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPAppSwitchManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsSettingsOn:Z

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsEnable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    const-string v0, "OPAppSwitchManagerService"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/am/ActivityManagerService;->getOposProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mColdStart:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "NULL"

    if-eqz p2, :cond_3

    :try_start_1
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v5, v4

    :goto_2
    sput-object v5, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageIsNull:Z

    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  handleActivityPaused , nextFirstStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goingToPackageIsNull = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageIsNull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/wm/OPAppSwitchManagerService$tsu;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, " handleActivityPaused error."

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-void
.end method

.method public handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5

    const-string v0, " / "

    const-string v1, "OPAppSwitchManagerService"

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->nowTopr:Lcom/android/server/wm/ActivityRecord;

    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageIsNull:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mColdStart:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchManagerService;->leaveFromHeyTap:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mColdStart:Z

    :goto_0
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " handleActivityResumed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ColdStart / goingToPackageIsNull / leaveFromHeyTap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mColdStart:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OPAppSwitchManagerService;->goingToPackageIsNull:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->leaveFromHeyTap:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "[ColdStat] = "

    if-eqz v2, :cond_2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/OPAppSwitchManagerService;->logHighlightD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/wm/OPAppSwitchManagerService$rtg;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/ActivityRecord;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, " handleActivityResumed error."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    const-string v0, "OPAppSwitchManagerService"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAm:Landroid/app/ActivityManager;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const-string v2, "OPAppSwitchManagerService: dispatcher"

    invoke-direct {p2, v2, v1, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p2}, Lcom/android/server/ServiceThread;->start()V

    new-instance p2, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    :cond_0
    new-instance p2, Lcom/android/server/wm/OPAppSwitchSettings;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/OPAppSwitchSettings;-><init>(Lcom/android/server/wm/OPAppSwitchSettings$you;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettings:Lcom/android/server/wm/OPAppSwitchSettings;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mNotifyHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$you;

    invoke-direct {v2, p0, p2}, Lcom/android/server/wm/OPAppSwitchManagerService$you;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Lcom/android/server/wm/OPAppSwitchSettings;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mCleanUpReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.opos.intent.action.KEY_LOCK_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p2, "permissionmgr"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Landroid/permission/IPermissionManager;

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPermissionManagerService:Landroid/permission/IPermissionManager;

    new-instance p2, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$wtn;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->you(Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mSettingsObserver:Lcom/android/server/wm/OPAppSwitchManagerService$wtn;

    invoke-virtual {p2}, Lcom/android/server/wm/OPAppSwitchManagerService$wtn;->zta()V

    new-instance p2, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wm/OPAppSwitchManagerService$kth;

    invoke-direct {v2, p0}, Lcom/android/server/wm/OPAppSwitchManagerService$kth;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;)V

    sget-object v3, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsOn:Ljava/lang/String;

    invoke-direct {p2, p1, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p2}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p2, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/wm/OPAppSwitchManagerService;->mOpAdsOn:Ljava/lang/String;

    invoke-direct {p2, p1, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchManagerService;->resolveOnlineConfig(Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    const-wide/32 v0, 0x11170

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mScreenStateFile:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mScreenStateFile:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mScreenStateFile:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public isInDangerousPermsList(Ljava/lang/String;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mDangerousPermList:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is on Dangerous list: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public isOposHotApp(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string p1, " is "

    goto :goto_0

    :cond_0
    const-string p1, " is not "

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "hot ! "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPAppSwitchManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public onConfigChanged()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchManagerService"

    const-string v1, "onConfigChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->updateAppSwitchConfig()V

    return-void
.end method

.method public registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "opos.permission.OPOS_COMPONENT_SAFE"

    const-string v2, "registerAppSwitchObserver"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appswitch registerAppSwitchObserver  pkgName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " observer = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " config = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->iService:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "opos service is still alive, bf register observer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "opos service is died, bind again, bf register observer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/OPAppSwitchManagerService;->bindOposService()V

    :cond_3
    :goto_0
    const-string v0, "com.opos.ads"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/color/app/ColorAppSwitchConfig;->getPackageSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get hot opos ads : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    if-nez v0, :cond_6

    new-instance v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    invoke-direct {v0, p1}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->buildDynamicRuleInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Lcom/android/server/wm/OPAppSwitchRuleInfo;

    move-result-object v2

    new-instance v3, Lcom/android/server/wm/OPAppSwitchManagerService$bio;

    invoke-direct {v3, p0, p1, p3}, Lcom/android/server/wm/OPAppSwitchManagerService$bio;-><init>(Lcom/android/server/wm/OPAppSwitchManagerService;Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)V

    iput-object v3, v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2}, Lcom/android/server/wm/IOPAppSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    :try_start_0
    invoke-interface {p1, v3, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->addDynamicListener(Lcom/android/server/wm/OPAppSwitchRuleInfo;)Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OPAppSwitchManagerService;->matchConfig(Lcom/android/server/wm/OPAppSwitchStateDispatcher;)V

    iget-boolean p0, v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->inBlackList:Z

    if-eqz p0, :cond_7

    return v1

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_2
    return v1
.end method

.method public unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "opos.permission.OPOS_COMPONENT_SAFE"

    const-string v2, "unregisterAppSwitchObserver"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getEnforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchManagerService;->DEBUG:Z

    const-string v1, " config = "

    const-string v2, "OPAppSwitchManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appswitch unregisterAppSwitchObserver pkgName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mIntercepters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OPAppSwitchStateDispatcher;

    if-nez v0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unregisterAppSwitchObserver failed, unknown package = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->buildDynamicRuleInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Lcom/android/server/wm/OPAppSwitchRuleInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/OPAppSwitchStateDispatcher;->removeDynamicListener(Lcom/android/server/wm/OPAppSwitchRuleInfo;)Z

    move-result p0

    return p0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unregisterAppSwitchObserver error, pkgName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
