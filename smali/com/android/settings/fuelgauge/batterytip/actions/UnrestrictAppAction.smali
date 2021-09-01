.class public Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "UnrestrictAppAction.java"


# instance fields
.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    .line 40
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 11

    .line 48
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getUnrestrictAppInfo()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v2, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    .line 52
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x553

    const/4 v10, 0x0

    move v8, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method
