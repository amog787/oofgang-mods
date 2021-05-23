.class public Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;,
        Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:I = 0x1

.field public static final IN_USING:Z

.field public static final OP_GAME_MODE_VIBRATE_FEEDBACK:Ljava/lang/String; = "op_game_mode_vibrate_feedback"

.field public static final RULE_XLVMOTOR_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

.field public static final TAG:Ljava/lang/String; = "XLVMotor"

.field private static final URI_OP_GAME_MODE_VIBRATE_FEEDBACK:Landroid/net/Uri;

.field public static mDebug:Z

.field private static sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;


# instance fields
.field private configs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEnable:Z

.field private mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

.field private mGlobalBluetoothA2dpOn:Z

.field private mLastEnableAwinic:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mVibrateFeedbackModeObserver:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;

.field private tManager:Landroid/telephony/TelephonyManager;

.field updateVolumeRunnable:Ljava/lang/Runnable;

.field updateVolumeRunnableForDP:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x61

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    const-string v1, "op_game_mode_vibrate_feedback"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->URI_OP_GAME_MODE_VIBRATE_FEEDBACK:Landroid/net/Uri;

    const/4 v1, 0x0

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    new-instance v1, Lcom/oneplus/core/oimc/OIMCRule;

    const-string v2, "GameMode"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v4, "XLVMotorController"

    invoke-direct {v1, v4, v0, v2, v3}, Lcom/oneplus/core/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->RULE_XLVMOTOR_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->tManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;-><init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$you;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$you;-><init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;-><init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnableForDP:Ljava/lang/Runnable;

    new-instance v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;-><init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mReceiver:Landroid/content/BroadcastReceiver;

    :try_start_0
    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;-><init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mVibrateFeedbackModeObserver:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->URI_OP_GAME_MODE_VIBRATE_FEEDBACK:Landroid/net/Uri;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "op_game_mode_vibrate_feedback"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {p1, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v3, :cond_0

    move v0, v3

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    new-instance p1, Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-direct {p1}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->loadConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "XLVMotor"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolume()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$500()Lcom/oneplus/android/server/scene/sis;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    return p0
.end method

.method static synthetic access$700(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->tManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->tManager:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVibrateFeedbackEnabled()V

    return-void
.end method

.method private enableAwinicHaptic(Z)V
    .locals 8

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    const/16 v0, 0xcb

    const-string v1, "enableXLinearVibrator: "

    const-string v2, "XLVMotor"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v5, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    invoke-virtual {p1, v4}, Lcom/oneplus/android/server/scene/sis;->zta(S)I

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    invoke-virtual {p1, v4}, Lcom/oneplus/android/server/scene/sis;->setEnabled(Z)I

    new-array p1, v3, [I

    aput v0, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getGameStartFlag()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->isOnlineConfigEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1, v4, v3}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->saveZoneInfo(ZZ)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->release()V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getParametersFromConfig(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    return-void

    :cond_2
    sget-boolean v7, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", parameters: "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    invoke-virtual {p1, v3}, Lcom/oneplus/android/server/scene/sis;->setEnabled(Z)I

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    int-to-short v1, v6

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/scene/sis;->zta(S)I

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolume()V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getSupportedGame()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getSupportedGame()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-array p1, v3, [I

    aput v0, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->isOnlineConfigEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p1, v5}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->init(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/oneplus/core/gamevibrate/GameVibrateManager;

    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getZoneInfo()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->setZoneInfo([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    return-object p0
.end method

.method private getParametersFromConfig(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;->you:I

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private loadConfig()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    aget-object v5, v3, v1

    new-instance v6, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;

    aget-object v7, v3, v1

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v6, v7, v8, v3}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static setHapticEffect(Lcom/oneplus/android/server/scene/sis;)V
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    return-void
.end method

.method private setParameters(Ljava/lang/String;)V
    .locals 2

    const-string p0, "XLVMotor"

    :try_start_0
    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exceptions during setParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateFunctionRule(Z)V
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, -0x2

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->RULE_XLVMOTOR_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-static {p1, p0}, Lcom/oneplus/server/you;->zta(Lcom/oneplus/core/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->RULE_XLVMOTOR_CONTROLLER:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-static {p1, p0}, Lcom/oneplus/server/you;->cno(Lcom/oneplus/core/oimc/OIMCRule;I)V

    :goto_0
    return-void
.end method

.method private declared-synchronized updateVibrateFeedbackEnabled()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "op_game_mode_vibrate_feedback"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "XLVMotor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feedback enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateVolume()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v1, v0, v3}, Landroid/media/AudioManager;->getStreamVolumeDb(III)F

    move-result p0

    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "XLVMotor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVolume device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "decibels="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentVolumeIndex="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->sAwinicEffect:Lcom/oneplus/android/server/scene/sis;

    invoke-virtual {v0, p0}, Lcom/oneplus/android/server/scene/sis;->you(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public disableFeatureWhenException()V
    .locals 2

    const-string v0, "XLVMotor"

    const-string v1, "disableFeatureWhenException!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mVibrateFeedbackModeObserver:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V

    :cond_0
    return-void
.end method

.method public getSupportList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$rtg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onConfig(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "XLVMotor"

    const-string p1, "[scene] XLVMotor: config"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz p1, :cond_0

    const-string p1, "XLVMotor"

    const-string v0, "[scene] XLVMotor: start"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->enableAwinicHaptic(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz p1, :cond_0

    const-string p1, "XLVMotor"

    const-string v0, "[scene] XLVMotor: stop"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->enableAwinicHaptic(Z)V

    return p1
.end method

.method public updateFunctionRule()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mEnable:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V

    return-void
.end method
