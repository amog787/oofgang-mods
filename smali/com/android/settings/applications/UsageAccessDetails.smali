.class public Lcom/android/settings/applications/UsageAccessDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "UsageAccessDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;

.field private mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

.field private mUsageDesc:Landroidx/preference/Preference;

.field private mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method private static doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 113
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setHasAccess(Z)V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/UsageAccessDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 125
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-static {v2, v1}, Lcom/android/settings/applications/UsageAccessDetails;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    const-string v2, "android.permission.LOADER_USAGE_STATS"

    invoke-static {v2, v1}, Lcom/android/settings/applications/UsageAccessDetails;->doesAnyPermissionMatch(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x5f

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_1
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

    const/16 p0, 0xb7

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x30f

    goto :goto_0

    :cond_0
    const/16 p1, 0x310

    :goto_0
    move v2, p1

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->getMetricsCategory()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p2

    .line 141
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 67
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    const-string v0, "appops"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 69
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 71
    sget p1, Lcom/android/settings/R$xml;->app_ops_permissions_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    const-string p1, "app_ops_settings_description"

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroidx/preference/Preference;

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->usage_access:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->permit_usage_access:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageDesc:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->usage_access_description:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.USAGE_ACCESS_CONFIG"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    .line 94
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 95
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object p2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 96
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x108037a

    .line 97
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x1040014

    .line 98
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->work_profile_usage_access_warning:I

    .line 99
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/android/settings/R$string;->okay:I

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/UsageAccessDetails;->setHasAccess(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/applications/UsageAccessDetails;->refreshUi()Z

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 5

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return v1

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageBridge:Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    .line 161
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mUsageState:Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    const/16 v2, 0x80

    iget v3, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 168
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 169
    iget-object v2, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSettingsIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_2

    const-string v0, "android.settings.metadata.USAGE_ACCESS_REASON"

    .line 172
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    iget-object p0, p0, Lcom/android/settings/applications/UsageAccessDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    .line 174
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
