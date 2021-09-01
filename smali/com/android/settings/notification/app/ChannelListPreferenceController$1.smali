.class Lcom/android/settings/notification/app/ChannelListPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "ChannelListPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/ChannelListPreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v2, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->access$002(Lcom/android/settings/notification/app/ChannelListPreferenceController;Ljava/util/List;)Ljava/util/List;

    .line 96
    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->access$000(Lcom/android/settings/notification/app/ChannelListPreferenceController;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_GROUP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->access$100(Lcom/android/settings/notification/app/ChannelListPreferenceController;)V

    return-void
.end method
