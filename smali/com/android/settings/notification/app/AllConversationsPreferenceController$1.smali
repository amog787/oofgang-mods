.class Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "AllConversationsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AllConversationsPreferenceController;->updateState(Landroidx/preference/Preference;)V
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
.field final synthetic this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

.field final synthetic val$pref:Landroidx/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AllConversationsPreferenceController;Landroidx/preference/PreferenceCategory;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->val$pref:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;->access$002(Lcom/android/settings/notification/app/AllConversationsPreferenceController;Ljava/util/List;)Ljava/util/List;

    .line 74
    iget-object p1, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;->access$000(Lcom/android/settings/notification/app/AllConversationsPreferenceController;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;->access$100(Lcom/android/settings/notification/app/AllConversationsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AllConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/AllConversationsPreferenceController;->access$000(Lcom/android/settings/notification/app/AllConversationsPreferenceController;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/app/AllConversationsPreferenceController$1;->val$pref:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    return-void
.end method
