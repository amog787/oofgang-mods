.class public Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;,
        Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MSG_BLOCK_AUTO_BACK_LIGHT_SETTING_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OemSceneAutoBrightnessController"

.field private static final URI_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

.field private static final URI_BLOCK_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;


# instance fields
.field private mAutoBackLightSettingsContentObserver:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;

.field private mBlockAutoBackLightSettingsContentObserver:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoBackSettingChangedByUs:Z

.field private mIsAutoBackSettingChangedByUsWhenBoot:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    const-string v0, "game_mode_close_automatic_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->URI_BLOCK_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->URI_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    new-instance v2, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$1;-><init>(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)V

    const-class v3, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OemSceneAutoBrightnessController"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, -0x2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x1

    invoke-static {p1, v3, v4, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput-boolean v4, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    :cond_0
    new-instance p1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v2, v3}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;-><init>(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mBlockAutoBackLightSettingsContentObserver:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->URI_BLOCK_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance p1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;

    iget-object v2, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v2, v3}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;-><init>(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mAutoBackLightSettingsContentObserver:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->URI_AUTO_BACKLIGHT_SETTING:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0, p1, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUsWhenBoot:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    return-void
.end method

.method private getGameModeAutoBrightnessBlocked()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_mode_close_automatic_brightness"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    return-object p0
.end method

.method private getNeedToRestoreAutoBacklight()Z
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "game_mode_need_to_restore_automatic_brightness"

    const/4 v1, -0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setNeedToRestoreAutoBacklight(Z)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const/4 v0, -0x2

    const-string v1, "game_mode_need_to_restore_automatic_brightness"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setupAutoBrightnessMode(Z)V
    .locals 7

    const-string v0, "OemSceneAutoBrightnessController"

    const/4 v1, -0x2

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v4, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    sget-boolean v5, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[scene] needToDisableAutoBacklight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput-boolean v4, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    invoke-direct {p0, v4}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    goto :goto_1

    :cond_2
    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[scene] needToRestoreAutoBacklight? "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->getNeedToRestoreAutoBacklight()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iput-boolean v4, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mIsAutoBackSettingChangedByUs:Z

    :cond_4
    invoke-direct {p0, v3}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->setNeedToRestoreAutoBacklight(Z)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneAutoBrightnessController"

    const-string p1, "[scene] TurnOffAutoBacklight: config"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneAutoBrightnessController"

    const-string v0, "[scene] TurnOffAutoBacklight: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->setupAutoBrightnessMode(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneAutoBrightnessController"

    const-string v0, "[scene] TurnOffAutoBacklight: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->setupAutoBrightnessMode(Z)V

    return p1
.end method

.method public updateFunctionRule(I)V
    .locals 3

    const-string v0, "OemSceneAutoBrightnessController"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I

    if-eq v1, p1, :cond_2

    sget-boolean v1, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] removeFuncRule for blocking auto brightness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/oneplus/core/oimc/OIMCRule;->RULE_DISABLE_AUTOBACKLIGHT:Lcom/oneplus/core/oimc/OIMCRule;

    iget v2, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I

    invoke-static {v1, v2}, Lcom/oneplus/server/you;->cno(Lcom/oneplus/core/oimc/OIMCRule;I)V

    :cond_2
    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->mUser:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFunctionRule error "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
