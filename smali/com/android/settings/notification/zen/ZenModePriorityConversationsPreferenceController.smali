.class public Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModePriorityConversationsPreferenceController.java"


# static fields
.field static final KEY_ALL:Ljava/lang/String; = "conversations_all"

.field static final KEY_IMPORTANT:Ljava/lang/String; = "conversations_important"

.field static final KEY_NONE:Ljava/lang/String; = "conversations_none"


# instance fields
.field private mConversationSettingsWidgetClickListener:Landroid/view/View$OnClickListener;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mNumConversations:I

.field private mNumImportantConversations:I

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreenContext:Landroid/content/Context;

.field private mRadioButtonClickListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

.field private mRadioButtonPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/RadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumImportantConversations:I

    .line 59
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumConversations:I

    .line 61
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    .line 200
    new-instance p1, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$2;-><init>(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mConversationSettingsWidgetClickListener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance p1, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$3;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$3;-><init>(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mRadioButtonClickListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    .line 67
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Lcom/android/settings/notification/NotificationBackend;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumConversations:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumImportantConversations:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreferenceScreenContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)I
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "conversations_all"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumConversations:I

    goto :goto_0

    :cond_0
    const-string v0, "conversations_important"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 126
    iget p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mNumImportantConversations:I

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-object v1

    :cond_1
    if-nez p1, :cond_2

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_conversations_count_none:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 137
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$plurals;->zen_mode_conversations_count:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 137
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static keyToSetting(Ljava/lang/String;)I
    .locals 3

    .line 111
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2757b2f3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x2e37b532

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "conversations_all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "conversations_important"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    return v2
.end method

.method private makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;
    .locals 2

    .line 184
    new-instance v0, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 185
    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;-><init>(Landroid/content/Context;)V

    const-string v1, "conversations_all"

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "conversations_important"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    goto :goto_1

    .line 187
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mConversationSettingsWidgetClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x2

    .line 188
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/RadioButtonPreferenceWithExtraWidget;->setExtraWidgetVisibility(I)V

    .line 192
    :goto_1
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mRadioButtonClickListener:Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 196
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private updateChannelCounts()V
    .locals 1

    .line 144
    new-instance v0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 180
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 72
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreferenceScreenContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v1, "conversations_all"

    .line 74
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    sget v0, Lcom/android/settings/R$string;->zen_mode_from_all_conversations:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    .line 76
    sget v0, Lcom/android/settings/R$string;->zen_mode_from_important_conversations:I

    const-string v1, "conversations_important"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    .line 77
    sget v0, Lcom/android/settings/R$string;->zen_mode_from_no_conversations:I

    const-string v1, "conversations_none"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->makeRadioPreference(Ljava/lang/String;I)Lcom/android/settings/widget/RadioButtonPreference;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->updateChannelCounts()V

    .line 81
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->updateChannelCounts()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 102
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getPriorityConversationSenders()I

    move-result p1

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->mRadioButtonPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/RadioButtonPreference;

    .line 105
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->keyToSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 106
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/notification/zen/ZenModePriorityConversationsPreferenceController;->getSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method
