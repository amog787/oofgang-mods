.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

.field public final synthetic f$1:Landroid/app/NotificationHistory$HistoricalNotification;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/settings/notification/history/NotificationHistoryViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryAdapter;Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    iput p3, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$2:I

    iput-object p4, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$3:Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$0:Lcom/android/settings/notification/history/NotificationHistoryAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$1:Landroid/app/NotificationHistory$HistoricalNotification;

    iget v2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$2:I

    iget-object p0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryAdapter$Ia-G6kTT8Cqg_nryl-eB50gWW7c;->f$3:Lcom/android/settings/notification/history/NotificationHistoryViewHolder;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryAdapter;->lambda$onBindViewHolder$0$NotificationHistoryAdapter(Landroid/app/NotificationHistory$HistoricalNotification;ILcom/android/settings/notification/history/NotificationHistoryViewHolder;Landroid/view/View;)V

    return-void
.end method
