.class Lcom/android/settings/notification/history/NotificationStation$1;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/history/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/history/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/history/NotificationStation;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/history/NotificationStation;->access$102(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/history/NotificationStation;->access$100(Lcom/android/settings/notification/history/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/history/NotificationStation;->access$100(Lcom/android/settings/notification/history/NotificationStation;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "onListenerConnected with update for %d"

    .line 155
    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationStation;->access$500(Lcom/android/settings/notification/history/NotificationStation;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-nez p2, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "onNotificationPosted: %s, with update for %d"

    .line 124
    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {v0, p2}, Lcom/android/settings/notification/history/NotificationStation;->access$102(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 127
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {p0, p1}, Lcom/android/settings/notification/history/NotificationStation;->access$200(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onNotificationRankingUpdate with update for %d"

    .line 146
    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {v0, p1}, Lcom/android/settings/notification/history/NotificationStation;->access$102(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 149
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationStation;->access$400(Lcom/android/settings/notification/history/NotificationStation;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "onNotificationRankingUpdate with update for %d"

    .line 135
    invoke-static {v1, v0}, Lcom/android/settings/notification/history/NotificationStation;->access$000(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {v0, p2}, Lcom/android/settings/notification/history/NotificationStation;->access$102(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 138
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 141
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationStation$1;->this$0:Lcom/android/settings/notification/history/NotificationStation;

    invoke-static {p0, p1}, Lcom/android/settings/notification/history/NotificationStation;->access$300(Lcom/android/settings/notification/history/NotificationStation;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method
