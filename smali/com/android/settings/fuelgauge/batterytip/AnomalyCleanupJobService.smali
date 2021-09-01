.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;
.super Landroid/app/job/JobService;
.source "AnomalyCleanupJobService.java"


# static fields
.field static final CLEAN_UP_FREQUENCY_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->CLEAN_UP_FREQUENCY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartJob$0(Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/app/job/JobParameters;)V
    .locals 5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget p2, p2, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;->dataHistoryRetainDay:I

    int-to-long v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 67
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->deleteAllAnomaliesBeforeTimeStamp(J)V

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p3, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public static scheduleCleanUp(Landroid/content/Context;)V
    .locals 3

    .line 42
    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 44
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    new-instance p0, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/android/settings/R$integer;->job_anomaly_clean_up:I

    invoke-direct {p0, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v1, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->CLEAN_UP_FREQUENCY_MS:J

    .line 47
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 50
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p0

    .line 51
    sget v2, Lcom/android/settings/R$integer;->job_anomaly_clean_up:I

    invoke-virtual {v0, v2}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    if-eq p0, v1, :cond_0

    const-string p0, "AnomalyCleanUpJobService"

    const-string v0, "Anomaly clean up job service schedule failed."

    .line 57
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$onStartJob$0$AnomalyCleanupJobService(Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->lambda$onStartJob$0(Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/app/job/JobParameters;)V

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 64
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;-><init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/app/job/JobParameters;)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
