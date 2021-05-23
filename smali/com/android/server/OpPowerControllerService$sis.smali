.class Lcom/android/server/OpPowerControllerService$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OpPowerControllerService;


# direct methods
.method constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$sis;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 4

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$sis;->zta:Lcom/android/server/OpPowerControllerService;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/OpPowerControllerService;->access$102(Lcom/android/server/OpPowerControllerService;J)J

    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$sis;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$200(Lcom/android/server/OpPowerControllerService;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$sis;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->restrictNetwork()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
