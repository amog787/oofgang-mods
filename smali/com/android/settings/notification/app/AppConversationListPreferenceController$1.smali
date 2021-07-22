.class Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "AppConversationListPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/AppConversationListPreferenceController;->loadConversationsAndPopulate()V
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
.field final synthetic this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/AppConversationListPreferenceController;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 91
    iget-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    iget-object v0, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object p1, p1, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget p1, p1, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 92
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->filterAndSortConversations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversations:Ljava/util/List;

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController$1;->this$0:Lcom/android/settings/notification/app/AppConversationListPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateList()V

    return-void
.end method
