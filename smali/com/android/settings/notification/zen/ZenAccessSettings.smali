.class public Lcom/android/settings/notification/zen/ZenAccessSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "ZenAccessSettings.java"

# interfaces
.implements Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNoMan:Landroid/app/NotificationManager;

.field private mPkgMan:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 154
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->zen_access_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    return-void
.end method

.method private getPreferenceSummary(Ljava/lang/String;)I
    .locals 0

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->hasAccess(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 150
    sget p0, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 151
    :cond_0
    sget p0, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    :goto_0
    return p0
.end method

.method private synthetic lambda$reloadList$0(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z
    .locals 7

    .line 129
    const-class v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    sget v1, Lcom/android/settings/R$string;->manage_zen_access_title:I

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->getMetricsCategory()I

    move-result v6

    const/4 v5, -0x1

    move-object v2, p1

    move-object v4, p0

    .line 129
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p0, 0x1

    return p0
.end method

.method private reloadList()V
    .locals 9

    .line 95
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-static {}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->getPackagesRequestingNotificationPolicyAccess()Ljava/util/Set;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 101
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 103
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 104
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 111
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 112
    new-instance v3, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v5, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v5}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 114
    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 115
    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 116
    new-instance v7, Lcom/android/settingslib/widget/apppreference/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 122
    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 123
    sget v6, Lcom/android/settings/R$string;->zen_access_disabled_package_warning:I

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings/notification/zen/ZenAccessSettings;->getPreferenceSummary(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setSummary(I)V

    .line 128
    :goto_2
    new-instance v6, Lcom/android/settings/notification/zen/-$$Lambda$ZenAccessSettings$Zmiquu5RYq_nVAx9ahbjK_PPuYc;

    invoke-direct {v6, p0, v5, v3}, Lcom/android/settings/notification/zen/-$$Lambda$ZenAccessSettings$Zmiquu5RYq_nVAx9ahbjK_PPuYc;-><init>(Lcom/android/settings/notification/zen/ZenAccessSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 80
    sget p0, Lcom/android/settings/R$xml;->zen_access_settings:I

    return p0
.end method

.method public synthetic lambda$reloadList$0$ZenAccessSettings(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenAccessSettings;->lambda$reloadList$0(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mPkgMan:Landroid/content/pm/PackageManager;

    .line 67
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenAccessSettings;->mNoMan:Landroid/app/NotificationManager;

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;-><init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 75
    sget p1, Lcom/android/settings/R$string;->zen_access_empty_text:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method

.method public onZenAccessPolicyChanged()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenAccessSettings;->reloadList()V

    return-void
.end method
