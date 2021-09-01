.class public abstract Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.super Ljava/lang/Object;
.source "BatteryTipAction.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public abstract handlePositiveAction(I)V
.end method
