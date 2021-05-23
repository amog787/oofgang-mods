.class public Lcom/oneplus/android/server/scene/ESportMode;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/ESportMode$tsu;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final KEY_BOOST_MODE_GAME_BOOST_SHOW_FLAG:Ljava/lang/String; = "boost_mode_game_boost_intro"

.field public static final KEY_BOOST_MODE_NO_DISTURB_SHOW_FLAG:Ljava/lang/String; = "boost_mode_no_disturb_intro"

.field public static final KEY_ESPORT_INTRO_SHOW_FLAG:Ljava/lang/String; = "game_mode_show_fnatic_intr"

.field private static final MAX_PHONE_ES_RETRY_COUNT:I = 0xa

.field private static final PHONE_ES_RETRY_DELAY:I = 0xbb8

.field public static final STATE_BOOST_MODE_GAME_BOOST:I = 0x1

.field public static final STATE_BOOST_MODE_NO_DISTURB:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ESportMode"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sEsportEnabled:Z

.field private static sIExtTelephony:Ljava/lang/Object;

.field private static sInstance:Lcom/oneplus/android/server/scene/ESportMode;

.field private static sTelEsportEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mESportGuider:Lcom/oneplus/android/server/scene/you;

.field private mEnabled:Z

.field private mEverShownGuider:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mReceiver:Lcom/oneplus/android/server/scene/ESportMode$tsu;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTelephonyEsportEnabled:Z

.field private mTelephonyEsportRetryCount:I

.field private mUser:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->sTelEsportEnabled:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/server/scene/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEverShownGuider:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportEnabled:Z

    iput v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportRetryCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mUser:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/android/server/scene/ESportMode$tsu;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/ESportMode$tsu;-><init>(Lcom/oneplus/android/server/scene/ESportMode;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mReceiver:Lcom/oneplus/android/server/scene/ESportMode$tsu;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mESportGuider:Lcom/oneplus/android/server/scene/you;

    new-instance v0, Lcom/oneplus/android/server/scene/ESportMode$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/ESportMode$zta;-><init>(Lcom/oneplus/android/server/scene/ESportMode;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mWindowManagerService:Landroid/view/IWindowManager;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/oneplus/android/server/scene/ESportMode$1;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/ESportMode$1;-><init>(Lcom/oneplus/android/server/scene/ESportMode;)V

    const-class v2, Lcom/oneplus/android/server/scene/ESportMode;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/ESportMode;->mReceiver:Lcom/oneplus/android/server/scene/ESportMode$tsu;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/you;->igw(Landroid/content/Context;)Lcom/oneplus/android/server/scene/you;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mESportGuider:Lcom/oneplus/android/server/scene/you;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ESportMode;->listenForConfigChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/scene/ESportMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/android/server/scene/ESportMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/scene/ESportMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ESportMode;->invokeEsportAPIs(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/scene/ESportMode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/scene/ESportMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ESportMode;->setTelephonyEsportMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/scene/ESportMode;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ESportMode;->isWiFiConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    return v0
.end method

.method private static getIExtTelephony()Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    const-string v1, "ESportMode"

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/scene/ESportMode;->sIExtTelephony:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/ESportMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ESportMode;->sInstance:Lcom/oneplus/android/server/scene/ESportMode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/ESportMode;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/ESportMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/ESportMode;->sInstance:Lcom/oneplus/android/server/scene/ESportMode;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/ESportMode;->sInstance:Lcom/oneplus/android/server/scene/ESportMode;

    return-object p0
.end method

.method private invokeEsportAPIs(Z)V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] ESportMode invokeEsportAPIs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ESportMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    const/4 v2, -0x2

    const-string v3, "esport_mode_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sput-boolean p1, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/ESportMode;->isWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->setTelephonyEsportMode(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ESportMode;->setTelephonyEsportMode(Z)V

    :goto_1
    invoke-static {}, Lcom/android/server/veq/zta;->you()Lcom/android/server/veq/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/veq/zta;->rtg(Z)V

    invoke-static {}, Lcom/android/server/am/cjf;->lqr()Lcom/android/server/am/cjf;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/android/server/am/cjf;->lqr()Lcom/android/server/am/cjf;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/cjf;->D(Z)V

    :cond_3
    return-void
.end method

.method public static isFnaticModeOn()Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/ESportMode;->sInstance:Lcom/oneplus/android/server/scene/ESportMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    return v0
.end method

.method private isWiFiConnected()Z
    .locals 3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    const-string v1, "ESportMode"

    if-nez p0, :cond_0

    const-string p0, "failed to get ConnectivityManager"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "failed to get NetworkInfo"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    return p0
.end method

.method private listenForConfigChanged()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/scene/ESportMode$you;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/ESportMode$you;-><init>(Lcom/oneplus/android/server/scene/ESportMode;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setTelephonyEsportMode(Z)V
    .locals 8

    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->sTelEsportEnabled:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportRetryCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    const-string v1, "ESportMode"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTelephonyEsportMode to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/scene/ESportMode;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/oneplus/android/server/scene/ESportMode;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/scene/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    sget-boolean v2, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got sIExtTelephony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/oneplus/android/server/scene/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/oneplus/android/server/scene/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "generalSetter"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "enable"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v5, Lcom/oneplus/android/server/scene/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "notifyEsportsMode"

    aput-object v6, v4, v7

    aput-object v3, v4, v0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/oneplus/android/server/scene/ESportMode;->sTelEsportEnabled:Z

    sget-boolean v2, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "persist.debug.esport.crash"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "debugging for phone crash"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2

    :cond_4
    :goto_0
    iput v7, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportRetryCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportRetryCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportRetryCount:I

    const/16 v0, 0xa

    if-lt v2, v0, :cond_5

    const-string p0, "Useless recover for phone esport triggering too many times. Ignore."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mTelephonyEsportEnabled:Z

    iget-object p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "ESportMode"

    const-string p1, "[scene] ESportMode: config"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "ESportMode"

    const-string v0, "[scene] ESportMode: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p1, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    if-eq p1, v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->invokeEsportAPIs(Z)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/ESportMode;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "ESportMode"

    const-string v0, "[scene] ESportMode: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p1, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/ESportMode;->invokeEsportAPIs(Z)V

    :cond_1
    return v0
.end method

.method public setEnable(ZZ)V
    .locals 7

    sget-boolean v0, Lcom/oneplus/android/server/scene/ESportMode;->sEsportEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x11a

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-string v2, "1"

    const/4 v4, -0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "boost_mode_no_disturb_intro"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/oneplus/android/server/scene/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "boost_mode_game_boost_intro"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "game_mode_show_fnatic_intr"

    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mESportGuider:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/you;->ywr()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mESportGuider:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/you;->gck()V

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mESportGuider:Lcom/oneplus/android/server/scene/you;

    new-instance v1, Lcom/oneplus/android/server/scene/ESportMode$sis;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/ESportMode$sis;-><init>(Lcom/oneplus/android/server/scene/ESportMode;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/scene/you;->gwm(Lcom/oneplus/android/server/scene/you$tsu;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/ESportMode;->mESportGuider:Lcom/oneplus/android/server/scene/you;

    invoke-virtual {v0}, Lcom/oneplus/android/server/scene/you;->vdb()V

    :cond_4
    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/server/wm/ywr;->rtg()Lcom/android/server/wm/ywr$zta;

    move-result-object p1

    iget-boolean p2, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ywr$zta;->bud(Z)V

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/ESportMode;->mEnabled:Z

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/ESportMode;->invokeEsportAPIs(Z)V

    return-void
.end method
