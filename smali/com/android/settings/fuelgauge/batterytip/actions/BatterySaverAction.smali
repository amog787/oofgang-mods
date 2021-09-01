.class public Lcom/android/settings/fuelgauge/batterytip/actions/BatterySaverAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "BatterySaverAction.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    .line 35
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    const/16 v1, 0x555

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method
