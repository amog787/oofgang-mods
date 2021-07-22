.class public Lcom/oneplus/settings/utils/AppTrackerHelper;
.super Ljava/lang/Object;
.source "AppTrackerHelper.java"


# static fields
.field private static mAppTrackerClass:Ljava/lang/Object;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 23
    sput-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/settings/utils/AppTrackerHelper;
    .locals 2

    .line 29
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    if-nez v0, :cond_1

    .line 30
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-direct {v1}, Lcom/oneplus/settings/utils/AppTrackerHelper;-><init>()V

    sput-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    return-object v0
.end method

.method private static isAllowSendAppTracker(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oem_join_user_plan_settings"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method static synthetic lambda$putAnalytics$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 52
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string v1, "YLTI9SVG4L"

    invoke-static {v0, v1, p0, p1, p2}, Lcom/oneplus/settings/utils/AppTrackerHelper;->sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$putAnalytics$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 69
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oneplus/settings/utils/AppTrackerHelper;->sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 82
    const-class v0, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x1d

    if-lt v1, v5, :cond_1

    .line 83
    sget-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    const-string v5, "AppTrackerUtil"

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "net.oneplus.odm.OpDeviceManagerInjector"

    .line 85
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "getInstance"

    new-array v7, v3, [Ljava/lang/Class;

    .line 87
    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v6, 0x0

    new-array v7, v3, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New instance AppTracker class exception."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :goto_0
    sget-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 99
    invoke-interface {v1, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "appid"

    .line 101
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :try_start_1
    sget-object p1, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p4, "preserveAppData"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v3

    aput-object v0, v7, v4

    const-class v0, Ljava/util/Map;

    aput-object v0, v7, v2

    const-class v0, Ljava/util/Map;

    const/4 v8, 0x3

    aput-object v0, v7, v8

    invoke-virtual {p1, p4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 105
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 106
    sget-object p4, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p2, v0, v4

    aput-object v1, v0, v2

    aput-object p3, v0, v8

    invoke-virtual {p1, p4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invoke method onEvent exception."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 113
    :cond_1
    sget-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    if-nez v1, :cond_2

    :try_start_2
    const-string v1, "net.oneplus.odm.insight.tracker.AppTracker"

    .line 115
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Class;

    .line 116
    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v3

    aput-object v0, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    .line 118
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    :cond_2
    :goto_1
    sget-object p0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    if-eqz p0, :cond_3

    .line 124
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :try_start_3
    sget-object p1, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p3, "onEvent"

    new-array p4, v2, [Ljava/lang/Class;

    aput-object v0, p4, v3

    const-class v0, Ljava/util/Map;

    aput-object v0, p4, v4

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 129
    sget-object p3, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v3

    aput-object p0, p4, v4

    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AppTrackerHelper"

    const-string p1, "isAllowSendAppTracker is false."

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    sget-object p0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {p0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "AppTrackerHelper"

    const-string p1, "isAllowSendAppTracker is false."

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$jYhu3qdFK7E64eX-WTcZYdb9nP0;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$jYhu3qdFK7E64eX-WTcZYdb9nP0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
