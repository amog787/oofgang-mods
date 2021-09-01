.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AnomalyConfigReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.app.action.STATSD_STARTED"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    if-nez p0, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 36
    :cond_0
    const-class p0, Landroid/app/StatsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatsManager;

    .line 39
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->scheduleConfigUpdate(Landroid/content/Context;)V

    .line 42
    :try_start_0
    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->uploadAnomalyPendingIntent(Landroid/content/Context;Landroid/app/StatsManager;)V
    :try_end_0
    .catch Landroid/app/StatsManager$StatsUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AnomalyConfigReceiver"

    const-string v2, "Failed to uploadAnomalyPendingIntent."

    .line 44
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 48
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->scheduleCleanUp(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
