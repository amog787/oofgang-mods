.class public Lcom/android/settings/notification/AppBubbleListPreferenceController;
.super Lcom/android/settings/notification/app/AppConversationListPreferenceController;
.source "AppBubbleListPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private synthetic lambda$createConversationPref$1(Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;Landroid/view/View;)V
    .locals 2

    .line 135
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p3

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/app/NotificationChannel;->setAllowBubbles(I)V

    .line 136
    iget-object p3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p3, v1, v0, p1}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 138
    iget-object p1, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$filterAndSortConversations$0(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 2

    .line 110
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public createConversationPref(Landroid/service/notification/ConversationChannelWrapper;)Landroidx/preference/Preference;
    .locals 3

    .line 131
    new-instance v0, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;-><init>(Landroid/content/Context;)V

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateConversationPreference(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v1, v1, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->setOnClickBubblesConversation(Z)V

    .line 134
    new-instance v1, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$PGJvPLB4Zgk1aNx1U8XZK2SqPBM;-><init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public filterAndSortConversations(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation

    .line 107
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    .line 108
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$tL6dTOqDtd6xd0Lo0vHgALY7dLs;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$AppBubbleListPreferenceController$tL6dTOqDtd6xd0Lo0vHgALY7dLs;-><init>(Lcom/android/settings/notification/AppBubbleListPreferenceController;)V

    .line 109
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 117
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bubble_conversations"

    return-object p0
.end method

.method protected getTitleResId()I
    .locals 1

    .line 123
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 124
    sget p0, Lcom/android/settings/R$string;->bubble_app_setting_selected_conversation_title:I

    goto :goto_0

    .line 125
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bubble_app_setting_excluded_conversation_title:I

    :goto_0
    return p0
.end method

.method public isAvailable()Z
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-boolean v2, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v2, :cond_1

    return v1

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/notification/NotificationBackend;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    .line 93
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "miscellaneous"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    return v1

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->bubblePreference:I

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$createConversationPref$1$AppBubbleListPreferenceController(Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/AppBubbleListPreferenceController;->lambda$createConversationPref$1(Landroid/service/notification/ConversationChannelWrapper;Lcom/android/settings/notification/AppBubbleListPreferenceController$ConversationPreference;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$filterAndSortConversations$0$AppBubbleListPreferenceController(Landroid/service/notification/ConversationChannelWrapper;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/AppBubbleListPreferenceController;->lambda$filterAndSortConversations$0(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result p0

    return p0
.end method

.method public onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 71
    invoke-super/range {p0 .. p6}, Lcom/android/settings/notification/app/NotificationPreferenceController;->onResume(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Landroid/graphics/drawable/Drawable;Landroid/content/pm/ShortcutInfo;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->loadConversationsAndPopulate()V

    return-void
.end method

.method protected populateList()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->populateList()V

    .line 148
    iget-object p0, p0, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->mPreference:Landroidx/preference/PreferenceCategory;

    if-nez p0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/notification/app/AppConversationListPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
