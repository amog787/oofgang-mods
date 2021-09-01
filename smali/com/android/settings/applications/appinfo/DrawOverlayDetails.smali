.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "DrawOverlayDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

.field private mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;
    .locals 0

    .line 178
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 180
    :cond_0
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 178
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 165
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    if-eqz v1, :cond_0

    .line 166
    check-cast v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    goto :goto_0

    .line 167
    :cond_0
    instance-of v0, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    goto :goto_0

    .line 170
    :cond_1
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    .line 174
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanDrawOverlay(Z)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

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

    const/16 p0, 0xdd

    return p0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x302

    goto :goto_0

    :cond_0
    const/16 p1, 0x303

    :goto_0
    move v2, p1

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getMetricsCategory()I

    move-result v3

    const/4 v5, 0x0

    move-object v4, p2

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    const-string v0, "appops"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 67
    invoke-static {p1}, Lcom/android/settings/Utils;->isSystemAlertWindowEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void

    .line 73
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->draw_overlay_permissions_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    .line 77
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 87
    sget p0, Lcom/android/settings/R$layout;->manage_applications_apps_unsupported:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    .line 95
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 106
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->setCanDrawOverlay(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->refreshUi()Z

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayBridge:Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 146
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->mOverlayState:Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->controlEnabled:Z

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return v1
.end method
