.class Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;
.super Landroid/os/AsyncTask;
.source "AppChannelsBypassingDndPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->loadAppChannels()V
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
.field final synthetic this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getGroups(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$000(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannelGroup;

    .line 133
    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 134
    iget-object v2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {v2, v1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$400(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {v2}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$000(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$000(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Ljava/util/List;

    move-result-object p0

    sget-object p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->CHANNEL_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 126
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;->this$0:Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->access$500(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V

    return-void
.end method
