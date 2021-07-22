.class Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;
.super Ljava/lang/Object;
.source "AppChannelsBypassingDndPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->populateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

.field final synthetic val$channel:Landroid/app/NotificationChannel;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 173
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 174
    iget-object p2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    iget-object v2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->val$channel:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 177
    iget-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$700(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$600(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return p2
.end method
