.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/notification/history/NotificationHistoryAdapter$OnItemDeletedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iput-object p2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onItemDeleted(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;->f$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    iget-object v1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;->f$1:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationHistoryActivity$Q0zSdWxJN000ofO6qpsdybFXYkY;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->lambda$new$1$NotificationHistoryActivity(Landroid/widget/TextView;Landroid/view/View;I)V

    return-void
.end method
