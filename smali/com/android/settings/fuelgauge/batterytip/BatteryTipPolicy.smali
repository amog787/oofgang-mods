.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;
.super Ljava/lang/Object;
.source "BatteryTipPolicy.java"


# instance fields
.field public final batterySaverTipEnabled:Z

.field public final dataHistoryRetainDay:I

.field public final highUsageAppCount:I

.field public final highUsageBatteryDraining:I

.field public final highUsageEnabled:Z

.field public final highUsagePeriodMs:J

.field public final lowBatteryEnabled:Z

.field public final lowBatteryHour:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field public final summaryEnabled:Z

.field public final testBatterySaverTip:Z

.field public final testHighUsageTip:Z

.field public final testLowBatteryTip:Z

.field public final testSmartBatteryTip:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 217
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;Landroid/util/KeyValueListParser;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/KeyValueListParser;)V
    .locals 4

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "battery_tip_constants"

    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 227
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {p2, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BatteryTipPolicy"

    const-string p2, "Bad battery tip constants"

    .line 229
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "battery_tip_enabled"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 233
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "summary_enabled"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->summaryEnabled:Z

    .line 234
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "battery_saver_tip_enabled"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->batterySaverTipEnabled:Z

    .line 235
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "high_usage_enabled"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageEnabled:Z

    .line 236
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "high_usage_app_count"

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageAppCount:I

    .line 237
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-wide/16 v2, 0x2

    .line 238
    invoke-static {v2, v3}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    const-string p2, "high_usage_period_ms"

    .line 237
    invoke-virtual {p1, p2, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsagePeriodMs:J

    .line 239
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0x19

    const-string v2, "high_usage_battery_draining"

    invoke-virtual {p1, v2, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->highUsageBatteryDraining:I

    .line 240
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "app_restriction_enabled"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 241
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0x18

    const-string v2, "app_restriction_active_hour"

    invoke-virtual {p1, v2, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 242
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "reduced_battery_enabled"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    .line 243
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0x32

    const-string v3, "reduced_battery_percent"

    invoke-virtual {p1, v3, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 244
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "low_battery_enabled"

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryEnabled:Z

    .line 245
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "low_battery_hour"

    invoke-virtual {p1, p2, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->lowBatteryHour:I

    .line 246
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0x1e

    const-string v0, "data_history_retain_day"

    invoke-virtual {p1, v0, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->dataHistoryRetainDay:I

    .line 247
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const/16 p2, 0xa

    const-string v0, "excessive_bg_drain_percentage"

    invoke-virtual {p1, v0, p2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 249
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "test_battery_saver_tip"

    invoke-virtual {p1, p2, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testBatterySaverTip:Z

    .line 250
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "test_high_usage_tip"

    invoke-virtual {p1, p2, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testHighUsageTip:Z

    .line 251
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "test_smart_battery_tip"

    invoke-virtual {p1, p2, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testSmartBatteryTip:Z

    .line 252
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string p2, "test_low_battery_tip"

    invoke-virtual {p1, p2, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->testLowBatteryTip:Z

    return-void
.end method
