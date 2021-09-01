.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "NotificationAccessSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mNm:Landroid/app/NotificationManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "NotifAccessSettings"

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "enabled_notification_listeners"

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.service.notification.NotificationListenerService"

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "notification listener"

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    sget v1, Lcom/android/settings/R$string;->notification_listener_security_warning_title:I

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogTitle(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    sget v1, Lcom/android/settings/R$string;->notification_listener_security_warning_summary:I

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogSummary(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    sget v1, Lcom/android/settings/R$string;->no_notification_listeners:I

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setEmptyText(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    .line 71
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 197
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->notification_access_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method private synthetic lambda$updateList$0(Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;Landroidx/preference/Preference;)Z
    .locals 2

    .line 157
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v1, "uid"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 162
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->manage_zen_access_title:I

    .line 168
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 169
    invoke-virtual {p1, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 170
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 171
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 172
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$wuvC5lnf_Osc19b5bvxPsXy0jA4(Lcom/android/settings/notification/NotificationAccessSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method private updateList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 131
    new-instance v2, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v2, v3}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ServiceInfo;

    .line 133
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 136
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    .line 137
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 136
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 137
    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "NotifAccessSettings"

    const-string v7, "can\'t find package name"

    .line 140
    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_1
    new-instance v5, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 146
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 145
    invoke-virtual {v4, v2, v6, v7}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    sget v4, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_2

    .line 150
    :cond_0
    sget v4, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 148
    :goto_2
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setSummary(I)V

    const/16 v4, -0x2710

    if-eq v0, v4, :cond_1

    .line 151
    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v6, v0}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    sget v4, Lcom/android/settings/R$string;->work_profile_notification_access_blocked_summary:I

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setSummary(I)V

    .line 156
    :cond_1
    new-instance v4, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$VWKihdNPOl2SzWKemgIgmu_lvno;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$VWKihdNPOl2SzWKemgIgmu_lvno;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 194
    sget p0, Lcom/android/settings/R$xml;->notification_access_settings:I

    return p0
.end method

.method public synthetic lambda$updateList$0$NotificationAccessSettings(Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/NotificationAccessSettings;->lambda$updateList$0(Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 189
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 86
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 87
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 88
    new-instance p1, Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 89
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    .line 94
    invoke-virtual {p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->build()Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 95
    new-instance v0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$wuvC5lnf_Osc19b5bvxPsXy0jA4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$wuvC5lnf_Osc19b5bvxPsXy0jA4;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    .line 96
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 98
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->notification_settings_work_profile:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 122
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 114
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    .line 116
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 108
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 109
    sget-object p1, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget p1, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method
