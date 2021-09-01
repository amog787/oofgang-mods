.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

.field private mAppLinkState:Landroidx/preference/Preference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 2

    .line 65
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    const-string v1, "package"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-string p0, "com.android.settings.applications.OpenSupportedLinks"

    .line 70
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x11

    .line 72
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p0, -0x1

    .line 73
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private linkStateToResourceId(I)I
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    .line 105
    sget p0, Lcom/android/settings/R$string;->app_link_open_ask:I

    return p0

    .line 103
    :cond_0
    sget p0, Lcom/android/settings/R$string;->app_link_open_never:I

    return p0

    .line 101
    :cond_1
    sget p0, Lcom/android/settings/R$string;->app_link_open_always:I

    return p0
.end method

.method private setAppLinkStateSummary()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 116
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->linkStateToResourceId(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x11

    return p0
.end method

.method public synthetic lambda$onCreate$0$AppLaunchSettings(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->lambda$onCreate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget p1, Lcom/android/settings/R$xml;->installed_app_launch_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_launch_supported_domain_urls"

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/AppDomainsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    const-string p1, "app_launch_clear_defaults"

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    const-string p1, "app_link_state"

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/Preference;

    .line 64
    new-instance v0, Lcom/android/settings/applications/-$$Lambda$AppLaunchSettings$g_t6BJ5Y7yCxTwc4xAP7Gknul5U;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$AppLaunchSettings$g_t6BJ5Y7yCxTwc4xAP7Gknul5U;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/applications/AppUtils;->isBrowserApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    .line 81
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 p1, p1, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    .line 84
    iget-boolean p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    array-length p1, p1

    new-array p1, p1, [I

    invoke-virtual {v0, p1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 93
    iget-object p1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setShouldDisableView(Z)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected refreshUi()Z
    .locals 2

    .line 122
    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->setAppLinkStateSummary()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    const/4 p0, 0x1

    return p0
.end method
