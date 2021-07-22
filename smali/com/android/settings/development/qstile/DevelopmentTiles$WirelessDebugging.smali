.class public Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WirelessDebugging"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 366
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    .line 370
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging$1;

    iget-object v1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging$1;-><init>(Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private isAdbWifiEnabled()Z
    .locals 2

    .line 426
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_wifi_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 0

    .line 404
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->isAdbWifiEnabled()Z

    move-result p0

    return p0
.end method

.method public onCreate()V
    .locals 3

    .line 380
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 381
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 384
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->adb_wireless_no_network_msg:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 390
    invoke-super {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->onStartListening()V

    .line 391
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_wifi_enabled"

    .line 392
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    .line 398
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 399
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/service/quicksettings/TileService;->sendBroadcast(Landroid/content/Intent;)V

    .line 418
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 422
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;->writeAdbWifiSetting(Z)V

    return-void
.end method

.method protected writeAdbWifiSetting(Z)V
    .locals 1

    .line 431
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_wifi_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
