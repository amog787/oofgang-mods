.class Lcom/android/settings/notification/RedactNotificationPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "RedactNotificationPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactNotificationPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RedactNotificationPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$000(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->access$000(Lcom/android/settings/notification/RedactNotificationPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/RedactNotificationPreferenceController$1;->this$0:Lcom/android/settings/notification/RedactNotificationPreferenceController;

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/RedactNotificationPreferenceController;->getAvailabilityStatus()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 65
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
