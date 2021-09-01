.class public Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAddBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mAddPreference:Landroidx/preference/Preference;

.field private mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mHostFragment:Landroidx/fragment/app/Fragment;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field mPrefContext:Landroid/content/Context;

.field mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 68
    :cond_0
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 189
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$2;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    .line 75
    iput-object p4, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 76
    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 77
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAddPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$Session;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSessionCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

    return-object p0
.end method

.method private synthetic lambda$updateAppList$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 2

    .line 149
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 150
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "uid"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndSettings;

    .line 153
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 154
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mHostFragment:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x0

    .line 155
    invoke-virtual {v0, p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    new-instance p0, Landroid/os/UserHandle;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 156
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x635

    .line 157
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 159
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 82
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "zen_mode_bypassing_apps_add"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAddPreference:Landroidx/preference/Preference;

    .line 84
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 96
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_non_bypassing_apps_list"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$updateAppList$0$ZenModeAddBypassingAppsPreferenceController(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->lambda$updateAppList$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public updateAppList()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    return-void

    .line 117
    :cond_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 118
    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->updateAppList(Ljava/util/List;)V

    return-void
.end method

.method updateAppList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 131
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_add_header:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 135
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 137
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 139
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v3

    .line 140
    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 141
    invoke-virtual {v4, v2, v5}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    if-lez v3, :cond_2

    .line 143
    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->getKey(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    if-nez v3, :cond_3

    .line 146
    new-instance v3, Lcom/android/settings/widget/AppPreference;

    iget-object v4, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 148
    new-instance v2, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeAddBypassingAppsPreferenceController$4kCGTSpljpVUXjFE--YxWSmKFoY;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeAddBypassingAppsPreferenceController$4kCGTSpljpVUXjFE--YxWSmKFoY;-><init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 163
    :cond_3
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 165
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 169
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 170
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    sget-object v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->KEY_NO_APPS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_5

    .line 173
    new-instance p1, Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 174
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->KEY_NO_APPS:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 175
    sget v1, Lcom/android/settings/R$string;->zen_mode_bypassing_apps_subtext_none:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 180
    :cond_6
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-static {v0, p1}, Lcom/android/settings/notification/zen/ZenModeAllBypassingAppsPreferenceController;->hasAppListChanged(Ljava/util/List;Landroidx/preference/PreferenceCategory;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 182
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 184
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_7
    return-void
.end method
