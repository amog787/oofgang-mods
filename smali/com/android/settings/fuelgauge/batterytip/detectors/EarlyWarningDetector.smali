.class public Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;
.super Ljava/lang/Object;
.source "EarlyWarningDetector.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    const-string p1, "power"

    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plugged"

    const/4 v2, -0x1

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 54
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v3

    .line 55
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;

    .line 56
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 55
    invoke-interface {v4, v5, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean v4, v4, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testBatterySaverTip:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v1

    :goto_2
    if-eqz v3, :cond_3

    goto :goto_3

    .line 60
    :cond_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->mPolicy:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->batterySaverTipEnabled:Z

    if-eqz p0, :cond_4

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    move v1, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x2

    .line 63
    :goto_3
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;-><init>(IZ)V

    return-object p0
.end method
