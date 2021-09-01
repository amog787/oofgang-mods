.class public abstract Lcom/android/settings/notification/app/ConversationListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ConversationListPreferenceController.java"


# instance fields
.field protected final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mConversationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance p1, Lcom/android/settings/notification/app/ConversationListPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController$1;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mConversationComparator:Ljava/util/Comparator;

    .line 51
    iput-object p2, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private synthetic lambda$createConversationPref$0(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 111
    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getSubSettingLauncher(Landroid/service/notification/ConversationChannelWrapper;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected createConversationPref(Landroid/service/notification/ConversationChannelWrapper;I)Landroidx/preference/Preference;
    .locals 7

    .line 101
    new-instance v0, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOrder(I)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getTitle(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getSummary(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/notification/app/ConversationListPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    .line 107
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v5

    .line 108
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v6

    .line 106
    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/notification/NotificationBackend;->getConversationDrawable(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 110
    new-instance p2, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/settings/notification/app/-$$Lambda$ConversationListPreferenceController$HKXCMFFpA_u9ZZGfRz14CHviJtw;-><init>(Lcom/android/settings/notification/app/ConversationListPreferenceController;Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;)V

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method getSubSettingLauncher(Landroid/service/notification/ConversationChannelWrapper;Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 3

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CHANNEL_ID"

    .line 137
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.extra.CONVERSATION_ID"

    .line 139
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 143
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 144
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 145
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 146
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 147
    invoke-virtual {v1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x72a

    .line 148
    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    return-object v1
.end method

.method getSummary(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;
    .locals 4

    .line 119
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_conversation_summary:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 122
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getParentChannelLabel()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getGroupLabel()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v2

    .line 121
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method abstract getSummaryPreference()Landroidx/preference/Preference;
.end method

.method getTitle(Landroid/service/notification/ConversationChannelWrapper;)Ljava/lang/CharSequence;
    .locals 0

    .line 126
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public synthetic lambda$createConversationPref$0$ConversationListPreferenceController(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->lambda$createConversationPref$0(Landroid/service/notification/ConversationChannelWrapper;Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method abstract matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z
.end method

.method protected populateConversations(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/16 v0, 0x64

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ConversationChannelWrapper;

    .line 91
    invoke-virtual {v1}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->matchesFilter(Landroid/service/notification/ConversationChannelWrapper;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 95
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->createConversationPref(Landroid/service/notification/ConversationChannelWrapper;I)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v0, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected populateList(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/ConversationChannelWrapper;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->populateConversations(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    .line 73
    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 75
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/app/ConversationListPreferenceController;->getSummaryPreference()Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 78
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method
