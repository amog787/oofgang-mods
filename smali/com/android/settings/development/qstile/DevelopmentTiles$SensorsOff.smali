.class public Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;
.super Lcom/android/settings/development/qstile/DevelopmentTiles;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/qstile/DevelopmentTiles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorsOff"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;-><init>()V

    return-void
.end method


# virtual methods
.method protected isEnabled()Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    return p0
.end method

.method public onCreate()V
    .locals 2

    .line 334
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 335
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mContext:Landroid/content/Context;

    const-string v1, "sensor_privacy"

    .line 336
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorPrivacyManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 338
    invoke-virtual {v0}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 341
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method public setIsEnabled(Z)V
    .locals 3

    .line 353
    iget-boolean v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x63e

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 358
    iput-boolean p1, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mIsEnabled:Z

    .line 359
    iget-object p0, p0, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(Z)V

    return-void
.end method
