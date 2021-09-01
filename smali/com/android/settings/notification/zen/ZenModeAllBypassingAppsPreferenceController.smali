.class public Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_NO_APPS:Ljava/lang/String;


# instance fields
.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mHostFragment:Landroidx/fragment/app/Fragment;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mPrefContext:Landroid/content/Context;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "none"

    .line 52
    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->getKey(Ljava/lang/String;)Ljava/lang/String;

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->KEY_NO_APPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    .line 73
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 74
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 75
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_0
    return-void
.end method

.method static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static hasAppListChanged(Ljava/util/List;Landroidx/preference/PreferenceCategory;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceCategory;",
            ")Z"
        }
    .end annotation

    .line 181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 186
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    .line 187
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 188
    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private synthetic lambda$updateAppList$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 2

    .line 135
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 136
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "uid"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndSettings;

    .line 139
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 140
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 141
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 142
    invoke-virtual {v0, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x635

    .line 143
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "zen_mode_bypassing_apps_list"

    .line 84
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 85
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList()V

    .line 87
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_bypassing_apps_list"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$updateAppList$0$ZenModeAllBypassingAppsPreferenceController(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->lambda$updateAppList$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public updateAppList()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 109
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method updateAppList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 120
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 122
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v3

    .line 125
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 126
    invoke-virtual {v4, v2, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 128
    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_2

    .line 132
    new-instance v5, Lcom/android/settings/widget/AppPreference;

    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 134
    new-instance v2, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeAllBypassingAppsPreferenceController$usGr5-p3Qvprs4OGuE5-4umNNPg;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeAllBypassingAppsPreferenceController$usGr5-p3Qvprs4OGuE5-4umNNPg;-><init>(Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    :cond_2
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-le v3, v4, :cond_3

    .line 152
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_summary_some:I

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 154
    :cond_3
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_summary_all:I

    invoke-virtual {v5, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 157
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 162
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    sget-object v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->KEY_NO_APPS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_5

    .line 164
    new-instance p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 165
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->KEY_NO_APPS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 166
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_none:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 168
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {v0, p1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->hasAppListChanged(Ljava/util/List;Landroidx/preference/PreferenceCategory;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 172
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 174
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method
