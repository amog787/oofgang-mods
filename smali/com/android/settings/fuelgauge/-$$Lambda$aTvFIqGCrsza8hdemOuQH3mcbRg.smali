.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$aTvFIqGCrsza8hdemOuQH3mcbRg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$aTvFIqGCrsza8hdemOuQH3mcbRg;->f$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    return-void
.end method


# virtual methods
.method public final onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$aTvFIqGCrsza8hdemOuQH3mcbRg;->f$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    return-void
.end method
