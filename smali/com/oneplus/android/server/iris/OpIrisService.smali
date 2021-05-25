.class public final Lcom/oneplus/android/server/iris/OpIrisService;
.super Lcom/oneplus/iris/IOnePlusIris$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/OpIrisService$tsu;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_USER_SWITCH:I = 0x0

.field private static final OP_GAME_MEMC_SWITCH:Ljava/lang/String; = "op_iris_game_memc_status"

.field private static final OP_GAME_SDR2HDR_SWITCH:Ljava/lang/String; = "op_iris_game_sdr2hdr_status"

.field private static final OP_VIDEO_MEMC_EXTREME_SWITCH:Ljava/lang/String; = "op_iris_video_memc_extreme_status"

.field private static final OP_VIDEO_MEMC_SWITCH:Ljava/lang/String; = "op_iris_video_memc_status"

.field private static final OP_VIDEO_SDR2HDR_SWITCH:Ljava/lang/String; = "op_iris_video_sdr2hdr_status"

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/iris/IOnePlusIris;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OpIrisService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private mIirsChipEnable:Z

.field private mIrisManager:Lcom/oneplus/android/server/iris/cno;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    new-instance v0, Lcom/oneplus/android/server/iris/OpIrisService$zta;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/OpIrisService$zta;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/iris/OpIrisService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/iris/IOnePlusIris$Stub;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x124

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIirsChipEnable:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    iput-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/iris/OpIrisService$tsu;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/iris/OpIrisService$tsu;-><init>(Lcom/oneplus/android/server/iris/OpIrisService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIirsChipEnable:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/iris/you;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/iris/you;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/android/server/iris/wtn;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/wtn;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/OpIrisService;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/iris/OpIrisService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/iris/OpIrisService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/iris/OpIrisService;)Lcom/oneplus/android/server/iris/cno;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/iris/OpIrisService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->updateColorMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/iris/OpIrisService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->handleUserSwitch()V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "ONEPLUS IRIS MANAGER dumpsys (op_iris_service)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-h"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, p2, v0

    const-string v2, "-help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, " -whitelist"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "     List all whitelists"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " -log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "     open full log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " -pt"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "     switch to pt mode"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    aget-object v0, p2, v0

    const-string v1, "-log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "persist.sys.assert.panic"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/android/server/iris/cno;->you(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public static getDefault()Lcom/oneplus/iris/IOnePlusIris;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/iris/OpIrisService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/iris/IOnePlusIris;

    return-object v0
.end method

.method private handleUserSwitch()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIirsChipEnable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->tearDown()V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->setUp()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    iget p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/iris/cno;->obl(I)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private setUp()V
    .locals 11

    const-string v0, "OpIrisService"

    const-string v1, "setUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/iris/OpIrisService$you;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/iris/OpIrisService$you;-><init>(Lcom/oneplus/android/server/iris/OpIrisService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_iris_game_memc_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "op_iris_game_sdr2hdr_status"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v6, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "op_iris_video_sdr2hdr_status"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v7, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v4, "op_iris_video_memc_status"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v8, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v6, "op_iris_video_memc_extreme_status"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v9, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "screen_color_mode_settings_value"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v9, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "screen_color_mode_advanced_settings_value"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v9, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v7, v5, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v7, "accessibility_display_inversion_enabled"

    invoke-static {v7}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    iget v10, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-virtual {v0, v8, v5, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v8, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-static {v0, v1, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/cno;->ibl(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-static {v0, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    if-ne v0, v8, :cond_2

    move v0, v8

    goto :goto_1

    :cond_2
    move v0, v5

    :goto_1
    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/cno;->cjf(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-static {v0, v2, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    if-ne v0, v8, :cond_3

    move v0, v8

    goto :goto_2

    :cond_3
    move v0, v5

    :goto_2
    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/cno;->gwm(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-static {v0, v3, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    if-ne v0, v8, :cond_4

    move v0, v8

    goto :goto_3

    :cond_4
    move v0, v5

    :goto_3
    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/cno;->ear(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-static {v0, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    if-ne v0, v8, :cond_5

    move v0, v8

    goto :goto_4

    :cond_5
    move v0, v5

    :goto_4
    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/iris/cno;->oxb(Z)V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/OpIrisService;->updateColorMode()V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    invoke-static {v0, v7, v5, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    if-ne v0, v8, :cond_6

    move v5, v8

    :cond_6
    invoke-virtual {v1, v5}, Lcom/oneplus/android/server/iris/cno;->bvj(Z)V

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/oneplus/android/server/iris/zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/iris/zta;-><init>(Lcom/oneplus/android/server/iris/OpIrisService;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/iris/cno;->oif(Z)V

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_7

    new-instance v0, Lcom/oneplus/android/server/iris/OpIrisService$sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/iris/OpIrisService$sis;-><init>(Lcom/oneplus/android/server/iris/OpIrisService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method private updateColorMode()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    const-string v2, "screen_color_mode_settings_value"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    const-string v4, "screen_color_mode_advanced_settings_value"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    invoke-virtual {p0, v3}, Lcom/oneplus/android/server/iris/cno;->qbh(Z)V

    return-void
.end method

.method private synthetic zta(Landroid/os/PowerSaveState;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->oif(Z)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mContext:Landroid/content/Context;

    const-string v0, "OpIrisService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/oneplus/android/server/iris/OpIrisService;->dumpInternal(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getColorTemperatureMode()I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpIrisService"

    const-string v1, "getColorTemperatureMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/iris/cno;->sis(I)I

    move-result p0

    return p0
.end method

.method public getIrisCommand(I)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIrisCommand type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->sis(I)I

    move-result p0

    return p0
.end method

.method public getMemcAppTypeMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpIrisService"

    const-string v1, "getMemcAppTypeMap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/cno;->tsu()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getMemcRateMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpIrisService"

    const-string v1, "getMemcRateMap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/cno;->rtg()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public getPreferedModeId(I)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPreferedModeId modeId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {v0}, Lcom/oneplus/android/server/iris/cno;->kth()Z

    move-result v0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->cno(I)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->ssp(I)I

    move-result p0

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpIrisService"

    const-string v1, "getUrl"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/cno;->bio()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyRecentAnimatorStatus(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRecentAnimatorStatus isAnimating : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->igw(Z)V

    return-void
.end method

.method public onBootComplete()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/cno;->wtn()V

    return-void
.end method

.method public postDisplayModeChange(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postModeIdChange modeId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->gck(I)V

    return-void
.end method

.method public prepareDisplayModeChange(Lcom/oneplus/iris/OpIrisWindowInfo;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpIrisService"

    const-string v1, "prepareModeIdChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->dma(Lcom/oneplus/iris/OpIrisWindowInfo;)V

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpIrisService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/iris/IOnePlusIris$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "op_iris_service"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public screenStateChange(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenStateChange state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->ywr(I)V

    return-void
.end method

.method public setAutoColorTemperature(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoColorTemperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "35-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->ugm(Ljava/lang/String;)V

    return-void
.end method

.method public setColorTemperatureMode(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorTemperatureMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "515-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->ugm(Ljava/lang/String;)V

    return-void
.end method

.method public setIrisCommand(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIrisCommand cmd : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->ugm(Ljava/lang/String;)V

    return-void
.end method

.method public setManualColorTemperature(I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/iris/OpIrisService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setManualColorTemperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "517-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/iris/cno;->ugm(Ljava/lang/String;)V

    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mIrisManager:Lcom/oneplus/android/server/iris/cno;

    invoke-virtual {p0}, Lcom/oneplus/android/server/iris/cno;->ire()V

    return-void
.end method

.method public userSwitch(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userSwitch userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mCurrentUser:I

    iget-object p0, p0, Lcom/oneplus/android/server/iris/OpIrisService;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public synthetic you(Landroid/os/PowerSaveState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/OpIrisService;->zta(Landroid/os/PowerSaveState;)V

    return-void
.end method
