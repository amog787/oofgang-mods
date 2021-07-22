.class Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;
.super Landroid/os/AsyncTask;
.source "ZenModeConversationsImagePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadConversationsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->mDrawables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 9

    const-string p1, "ZenModeConversationsImagePreferenceController"

    const-string v0, "doInBackground"

    .line 144
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->mDrawables:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 146
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    .line 147
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    .line 151
    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ConversationChannelWrapper;

    .line 155
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$000(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    .line 157
    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Landroid/content/Context;

    move-result-object v4

    .line 158
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    .line 159
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v7

    .line 161
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v8

    .line 156
    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->mDrawables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$200(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->mDrawables:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController$LoadConversationsTask;->this$0:Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->access$400(Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeConversationsImagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method
