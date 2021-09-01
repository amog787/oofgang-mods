.class public final synthetic Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/fuelgauge/BatteryInfo$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;->f$0:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    return-void
.end method


# virtual methods
.method public final onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;->f$0:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->lambda$setStats$0$BatteryHistoryPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
