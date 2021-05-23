.class Lcom/android/server/am/AppRecordManagerService$ssp;
.super Landroid/service/notification/NotificationListenerService;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/AppRecordManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppRecordManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 5

    iget-object p2, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p2}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    if-nez p1, :cond_0

    :try_start_0
    monitor-exit p2

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v2, v1}, Lcom/android/server/am/AppRecordManagerService;->access$1200(Lcom/android/server/am/AppRecordManagerService;Landroid/app/Notification;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v2}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v3}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/AppRecordManagerService;->access$1200(Lcom/android/server/am/AppRecordManagerService;Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v3}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p0, p2, v0, v2}, Lcom/android/server/am/OpAppRecordInjector;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string p2, "onNotificationPosted isNoClear "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " pkg = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " pid = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/am/AppRecordManagerService;->access$1200(Lcom/android/server/am/AppRecordManagerService;Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v0

    const/4 v2, 0x0

    invoke-static {p0, p2, v0, v2}, Lcom/android/server/am/OpAppRecordInjector;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v0, p2}, Lcom/android/server/am/AppRecordManagerService;->access$1200(Lcom/android/server/am/AppRecordManagerService;Landroid/app/Notification;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v0}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationRemoved isNoClear"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {v2}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppRecordManagerService$ssp;->zta:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {p0}, Lcom/android/server/am/AppRecordManagerService;->access$1100(Lcom/android/server/am/AppRecordManagerService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/am/OpAppRecordInjector;->noteNotificationChanged(Ljava/lang/String;IIZ)V

    :cond_3
    const-string p0, "onNotificationRemoved"

    invoke-static {p0}, Lcom/android/server/am/dma;->sis(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
