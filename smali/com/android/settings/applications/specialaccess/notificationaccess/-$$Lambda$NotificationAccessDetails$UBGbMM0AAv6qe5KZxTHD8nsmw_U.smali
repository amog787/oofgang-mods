.class public final synthetic Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$NotificationAccessDetails$UBGbMM0AAv6qe5KZxTHD8nsmw_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

.field public final synthetic f$1:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$NotificationAccessDetails$UBGbMM0AAv6qe5KZxTHD8nsmw_U;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$NotificationAccessDetails$UBGbMM0AAv6qe5KZxTHD8nsmw_U;->f$1:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$NotificationAccessDetails$UBGbMM0AAv6qe5KZxTHD8nsmw_U;->f$0:Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/notificationaccess/-$$Lambda$NotificationAccessDetails$UBGbMM0AAv6qe5KZxTHD8nsmw_U;->f$1:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;->lambda$disable$1$NotificationAccessDetails(Landroid/content/ComponentName;)V

    return-void
.end method
