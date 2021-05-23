.class Lcom/android/server/location/OnePlusGpsNotificationService$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/OnePlusGpsNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/location/OnePlusGpsNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/OnePlusGpsNotificationService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/location/OnePlusGpsNotificationService;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    iget-object v0, v0, Lcom/android/server/location/OnePlusGpsNotificationService;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GpsNotificationHander handleMessage mCurrentGpsPackageList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    iget-object v3, v3, Lcom/android/server/location/OnePlusGpsNotificationService;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " msg.what ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    iget-object p1, p1, Lcom/android/server/location/OnePlusGpsNotificationService;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    iget-object v0, v0, Lcom/android/server/location/OnePlusGpsNotificationService;->mCurrentGpsPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    iget-object v0, v0, Lcom/android/server/location/OnePlusGpsNotificationService;->mCurrentGpsLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$502(Lcom/android/server/location/OnePlusGpsNotificationService;Z)Z

    iget-object v0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$402(Lcom/android/server/location/OnePlusGpsNotificationService;J)J

    iget-object p0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-static {p0}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$600(Lcom/android/server/location/OnePlusGpsNotificationService;)Landroid/app/NotificationManager;

    move-result-object p0

    const v0, 0x50f0064

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-static {p1}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$300(Lcom/android/server/location/OnePlusGpsNotificationService;)Lcom/android/server/location/OnePlusGpsNotificationService$you;

    move-result-object p1

    const v0, 0xdac0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$402(Lcom/android/server/location/OnePlusGpsNotificationService;J)J

    iget-object p1, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/location/OnePlusGpsNotificationService;->access$502(Lcom/android/server/location/OnePlusGpsNotificationService;Z)Z

    iget-object p0, p0, Lcom/android/server/location/OnePlusGpsNotificationService$you;->zta:Lcom/android/server/location/OnePlusGpsNotificationService;

    invoke-virtual {p0}, Lcom/android/server/location/OnePlusGpsNotificationService;->notifyPackageNotification()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xdac0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
