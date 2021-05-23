.class public Lcom/oneplus/android/server/scene/OemSceneAdModeController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.admode.action.test"

.field public static final DEFAULT_AD_ENABLED:I = 0x0

.field public static final GAME_COLOR_PLUS:Z

.field public static final IN_USING:Z

.field public static final OP_GAME_MODE_AD_ENABLE:Ljava/lang/String; = "op_game_mode_ad_enable"

.field public static final RULE_ADMODE_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final TAG:Ljava/lang/String; = "OemSceneAdModeController"

.field private static final URI_GAME_MODE_AD_ENABLE:Landroid/net/Uri;

.field public static mManualAdStatus:Z

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneAdModeController;


# instance fields
.field private mAdModeObserver:Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field public mDebug:Z

.field public mEnable:Z

.field private mInterval:I

.field private mLastEnabled:Z

.field private mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field public final mOpAdModeManual:I

.field public final mOpAdModeStrength:I

.field public mOpAdStrengthDefault:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Landroid/os/CountDownTimer;

.field private mTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x108

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->GAME_COLOR_PLUS:Z

    if-nez v1, :cond_1

    new-array v1, v0, [I

    const/16 v2, 0x6c

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->IN_USING:Z

    const-string v1, "op_game_mode_ad_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->URI_GAME_MODE_AD_ENABLE:Landroid/net/Uri;

    sput-boolean v3, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mManualAdStatus:Z

    new-instance v1, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "AdModeController"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->RULE_ADMODE_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    const/16 v1, 0xd

    iput v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOpAdModeManual:I

    const/16 v1, 0xe

    iput v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOpAdModeStrength:I

    const/16 v1, 0x12c

    iput v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOpAdStrengthDefault:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x14

    iput v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mInterval:I

    const/16 v1, 0x3c

    iput v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimes:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mLastEnabled:Z

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController$sis;-><init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->initEnv(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneAdModeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/scene/OemSceneAdModeController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setModeSmoothly(ZI)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimes:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/android/server/scene/OemSceneAdModeController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimes:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->updateAdEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/scene/OemSceneAdModeController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setMode(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mInterval:I

    return p0
.end method

.method static synthetic access$502(Lcom/oneplus/android/server/scene/OemSceneAdModeController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mInterval:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAdModeController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    return-object p0
.end method

.method private initEnv(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.admode.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;-><init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mAdModeObserver:Lcom/oneplus/android/server/scene/OemSceneAdModeController$tsu;

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->URI_GAME_MODE_AD_ENABLE:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "op_game_mode_ad_enable"

    const/4 v1, -0x2

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v2, v0

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    return-void
.end method

.method private setMode(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    const-string v1, "OemSceneAdModeController"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode m="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    invoke-interface {p0, p1, p2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setModeByDefault(ZI)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mLastEnabled:Z

    sput-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mManualAdStatus:Z

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const-string v1, "OemSceneAdModeController"

    if-nez v0, :cond_0

    const-string p0, "OneplusDisplay is null!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lt p2, v0, :cond_3

    const/16 v0, 0x3ff

    if-le p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setModeByDefault enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " strength="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneAdModeController$zta;-><init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error ad strength "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setModeSmoothly(ZI)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneAdModeController$you;

    iget v1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimes:I

    iget v2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mInterval:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x32

    int-to-long v3, v1

    int-to-long v5, v2

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/android/server/scene/OemSceneAdModeController$you;-><init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;JJIZ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private declared-synchronized updateAdEnabled()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "op_game_mode_ad_enable"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->updateFunctionRule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneAdModeController"

    const-string p1, "[scene] AdModeController: config"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    const-string v0, "OemSceneAdModeController"

    if-eqz p1, :cond_0

    const-string p1, "[scene] AdModeController: start"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->GAME_COLOR_PLUS:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-nez p1, :cond_1

    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz p0, :cond_2

    const/16 p1, 0xc

    invoke-interface {p0, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setActiveModesId(I)V

    goto :goto_0

    :cond_2
    const-string p0, "can\'t get color display service"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOpAdStrengthDefault:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setModeByDefault(ZI)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 2

    iget-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mDebug:Z

    const-string v0, "OemSceneAdModeController"

    if-eqz p1, :cond_0

    const-string p1, "[scene] AdModeController: stop"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->GAME_COLOR_PLUS:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-nez p1, :cond_1

    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->resumeColorMode()V

    goto :goto_0

    :cond_2
    const-string p0, "can\'t get color display service"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mOpAdStrengthDefault:I

    invoke-direct {p0, v1, p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setModeByDefault(ZI)V

    :goto_0
    return v1
.end method

.method public updateFunctionRule()V
    .locals 1

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->mEnable:Z

    const/4 v0, -0x2

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->RULE_ADMODE_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-static {p0, v0}, Lcom/oneplus/server/you;->zta(Lcom/oneplus/core/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->RULE_ADMODE_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-static {p0, v0}, Lcom/oneplus/server/you;->cno(Lcom/oneplus/core/oimc/OIMCRule;I)V

    :goto_0
    return-void
.end method
