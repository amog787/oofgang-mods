.class public Lcom/android/settings/notification/app/NoConversationsPreferenceController;
.super Lcom/android/settings/notification/app/ConversationListPreferenceController;
.source "NoConversationsPreferenceController.java"


# instance fields
.field private mConversations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversations:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/notification/app/NoConversationsPreferenceController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/settings/notification/app/NoConversationsPreferenceController;->mConversations:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notification/app/NoConversationsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "no_conversations"

    return-object p0
.end method

.method getSummaryPreference()Landroidx/preference/Preference;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 65
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 67
    new-instance v1, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/settings/notification/app/NoConversationsPreferenceController$1;-><init>(Lcom/android/settings/notification/app/NoConversationsPreferenceController;Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/Preference;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 83
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
