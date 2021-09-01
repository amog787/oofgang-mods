.class public Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "SmartBatteryAction.java"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 36
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    const/16 v2, 0x554

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 46
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroidx/fragment/app/Fragment;

    instance-of v0, p0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const-class p0, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->op_smart_battery_manager_title:I

    .line 51
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method
