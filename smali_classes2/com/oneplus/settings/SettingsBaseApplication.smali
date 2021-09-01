.class public Lcom/oneplus/settings/SettingsBaseApplication;
.super Landroid/app/Application;
.source "SettingsBaseApplication.java"


# static fields
.field public static final ONEPLUS_DEBUG:Z

.field private static handler:Landroid/os/Handler;

.field private static handlerThread:Landroid/os/HandlerThread;

.field public static mApplication:Landroid/app/Application;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mIsBeta:Z

.field private mTracker:Lcom/google/analytics/tracking/android/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/SettingsBaseApplication;->ONEPLUS_DEBUG:Z

    new-array v0, v1, [B

    .line 27
    sput-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/SettingsBaseApplication;Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/oneplus/settings/SettingsBaseApplication;->startOtherTask(Landroid/content/Context;)V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 48
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 3

    .line 30
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    if-nez v0, :cond_3

    .line 31
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 33
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/oneplus/settings/SettingsBaseApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    .line 36
    :cond_0
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 39
    :cond_1
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    .line 41
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_3
    :goto_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private startOtherTask(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-static {p1}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/firewall/NetworkRestrictManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/security/firewall/NetworkRestrictManager;->init()V

    .line 69
    invoke-static {p1}, Lcom/oneplus/security/SecureService;->startService(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Lcom/oneplus/security/widget/SecurityWidgetProvider;->notifyDataUsage(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;
    .locals 4

    .line 86
    const-class v0, Lcom/oneplus/settings/SettingsBaseApplication;

    monitor-enter v0

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    if-nez v1, :cond_0

    .line 88
    invoke-static {p0}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/analytics/tracking/android/GoogleAnalytics;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getLogger()Lcom/google/analytics/tracking/android/Logger;

    move-result-object v2

    sget-object v3, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-interface {v2, v3}, Lcom/google/analytics/tracking/android/Logger;->setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V

    const-string v2, "UA-92966593-3"

    .line 91
    invoke-virtual {v1, v2}, Lcom/google/analytics/tracking/android/GoogleAnalytics;->getTracker(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    .line 93
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object p0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mTracker:Lcom/google/analytics/tracking/android/Tracker;

    return-object p0

    :catchall_0
    move-exception p0

    .line 93
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isBetaRom()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mIsBeta:Z

    return p0
.end method

.method public onCreate()V
    .locals 4

    .line 53
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 54
    sput-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 55
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBetaRom()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/SettingsBaseApplication;->mIsBeta:Z

    .line 56
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->getInstence(Landroid/content/Context;)Lcom/oneplus/settings/OPOnlineConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/OPOnlineConfigManager;->init()V

    .line 58
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/SettingsBaseApplication$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/SettingsBaseApplication$1;-><init>(Lcom/oneplus/settings/SettingsBaseApplication;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
