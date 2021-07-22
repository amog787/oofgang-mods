.class Lcom/android/settings/notification/NotificationPeopleStripPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "NotificationPeopleStripPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController$1;->this$0:Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController$1;->this$0:Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;->access$000(Lcom/android/settings/notification/NotificationPeopleStripPreferenceController;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
