.class public final synthetic Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic f$0:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$1:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/history/NotificationSbnViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;->f$0:Landroid/service/notification/StatusBarNotification;

    iput-object p2, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;->f$1:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iput p3, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;->f$2:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;->f$0:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;->f$1:Lcom/android/settings/notification/history/NotificationSbnViewHolder;

    iget p0, p0, Lcom/android/settings/notification/history/-$$Lambda$NotificationSbnAdapter$yceDzCEKiG9xAIkldcKOrTG6LUw;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->lambda$onBindViewHolder$0(Landroid/service/notification/StatusBarNotification;Lcom/android/settings/notification/history/NotificationSbnViewHolder;ILandroid/view/View;)Z

    move-result p0

    return p0
.end method
