.class Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "ZenModePriorityConversationsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->updateChannelCounts()V
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
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 147
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    .line 148
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 151
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    .line 152
    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-static {p1, v1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$102(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;I)I

    .line 159
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    .line 160
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 163
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ConversationChannelWrapper;

    .line 164
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-static {p0, v0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$202(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;I)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 144
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->access$400(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
