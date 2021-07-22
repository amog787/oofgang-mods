.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

.field public final synthetic f$1:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

.field public final synthetic f$2:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

.field public final synthetic f$3:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$1:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$2:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$3:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$1:Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$2:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyCleanupJobService$Wvu3W97OjsnNVurAIkZXTma9fMg;->f$3:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyCleanupJobService;->lambda$onStartJob$0$AnomalyCleanupJobService(Lcom/android/settings/fuelgauge/batterytip/BatteryDatabaseManager;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/app/job/JobParameters;)V

    return-void
.end method
