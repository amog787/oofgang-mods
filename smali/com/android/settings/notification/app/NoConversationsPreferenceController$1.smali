.class Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;
.super Landroid/os/AsyncTask;
.source "NoConversationsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/app/NoConversationsPreferenceController;->updateState(Landroidx/preference/Preference;)V
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
.field final synthetic this$0:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

.field final synthetic val$pref:Lcom/android/settingslib/widget/LayoutPreference;

.field final synthetic val$preference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/app/NoConversationsPreferenceController;Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/Preference;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->val$pref:Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p3, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->val$preference:Landroidx/preference/Preference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationBackend;->getConversations(Z)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->access$002(Lcom/android/settings/notification/app/NoConversationsPreferenceController;Ljava/util/List;)Ljava/util/List;

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    .line 76
    iget-object p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->access$100(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->val$pref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v0, Lcom/android/settings/R$id;->onboarding:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->access$000(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->val$preference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;->this$0:Lcom/android/settings/notification/app/NoConversationsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->access$000(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
