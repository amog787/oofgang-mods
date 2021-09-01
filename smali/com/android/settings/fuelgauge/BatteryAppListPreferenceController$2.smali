.class Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;
.super Ljava/lang/Object;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->OnDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 586
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$2;->this$0:Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;

    invoke-static {p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->access$500(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/core/InstrumentedPreferenceFragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IllegalStateException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryAppList"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
