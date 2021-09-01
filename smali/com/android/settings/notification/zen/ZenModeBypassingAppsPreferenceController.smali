.class public Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mPreference:Landroidx/preference/Preference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_behavior_apps"

    .line 49
    invoke-direct {p0, p1, v0, p4}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    new-instance p1, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {p1}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 148
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->updateAppsBypassingDndSummaryText()V

    return-void
.end method

.method private updateAppsBypassingDndSummaryText()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 83
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->updateAppsBypassingDndSummaryText(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_behavior_apps"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->updateAppsBypassingDndSummaryText()V

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_behavior_apps"

    return-object p0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->getSummary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method updateAppsBypassingDndSummaryText(Ljava/util/List;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 108
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 109
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 110
    iget-object v7, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 111
    invoke-virtual {v7, v6, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v5

    .line 110
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationChannel;

    .line 112
    invoke-virtual {v6}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v6

    iget-object v7, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 123
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_subtext_none:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mSummary:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void

    .line 129
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-gt p1, v1, :cond_5

    .line 131
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 133
    :cond_5
    new-array v1, p1, [Ljava/lang/String;

    .line 134
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 135
    aget-object v1, v0, v2

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    aget-object v0, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->zen_mode_apps_bypassing_list_count:I

    new-array v5, v3, [Ljava/lang/Object;

    add-int/lit8 v6, p1, -0x2

    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    .line 137
    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$plurals;->zen_mode_bypassing_apps_subtext:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 144
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 141
    invoke-virtual {v0, v1, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mSummary:Ljava/lang/String;

    .line 145
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void

    .line 95
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 96
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_subtext_none:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeBypassingAppsPreferenceController;->mSummary:Ljava/lang/String;

    return-void
.end method
