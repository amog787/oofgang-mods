.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

.field public final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyDetectionJobService$7JxJe3rza0cCkIc77iCS-ZKPfL4;->f$1:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/AnomalyDetectionJobService;->lambda$onStartJob$0$AnomalyDetectionJobService(Landroid/app/job/JobParameters;)V

    return-void
.end method
