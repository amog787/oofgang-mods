.class public Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "LaunchAccessibilityActivityPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private getAccessibilityShortcutInfo()Landroid/accessibilityservice/AccessibilityShortcutInfo;
    .locals 7

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 136
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityShortcutInfo;

    .line 137
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 138
    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 139
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getSettingsIntent(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3

    const-string v0, "settings_component_name"

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 169
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 169
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private synthetic lambda$onInstallSwitchPreferenceToggleSwitch$0(Landroidx/preference/Preference;)Z
    .locals 1

    .line 68
    check-cast p1, Lcom/android/settings/accessibility/DividerSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 69
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method private launchShortcutTargetActivity(ILandroid/content/ComponentName;)V
    .locals 2

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 150
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    .line 151
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "LaunchA11yActivity"

    const-string p1, "Target activity not found."

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method getUserShortcutTypes()I
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0}, Lcom/android/settings/accessibility/AccessibilityUtil;->getUserShortcutTypesFromSettings(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onInstallSwitchPreferenceToggleSwitch$0$LaunchAccessibilityActivityPreferenceFragment(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;->lambda$onInstallSwitchPreferenceToggleSwitch$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method protected onInstallSwitchPreferenceToggleSwitch()V
    .locals 2

    .line 66
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchPreferenceToggleSwitch()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$LaunchAccessibilityActivityPreferenceFragment$a3zPr9ZHUleAF30EQcwhRd1NWLc;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$LaunchAccessibilityActivityPreferenceFragment$a3zPr9ZHUleAF30EQcwhRd1NWLc;-><init>(Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p1, p2}, Lcom/android/settings/accessibility/AccessibilityStatsLogUtils;->logAccessibilityServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;->launchShortcutTargetActivity(ILandroid/content/ComponentName;)V

    return-void
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    const-string v0, "component_name"

    .line 78
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;->getAccessibilityShortcutInfo()Landroid/accessibilityservice/AccessibilityShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPackageName:Ljava/lang/CharSequence;

    const-string v0, "animated_image_res"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 85
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "android.resource"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 86
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mImageUri:Landroid/net/Uri;

    const-string v0, "html_description"

    .line 91
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mHtmlDescription:Ljava/lang/CharSequence;

    const-string v0, "settings_title"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;->getSettingsIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    if-nez p1, :cond_1

    move-object v0, v2

    .line 97
    :cond_1
    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onSettingsClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/DividerSwitchPreference;->setSwitchVisibility(I)V

    return-void
.end method

.method protected updateToggleServiceTitle(Landroidx/preference/SwitchPreference;)V
    .locals 5

    .line 121
    invoke-direct {p0}, Lcom/android/settings/accessibility/LaunchAccessibilityActivityPreferenceFragment;->getAccessibilityShortcutInfo()Landroid/accessibilityservice/AccessibilityShortcutInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 122
    :cond_0
    sget v1, Lcom/android/settings/R$string;->accessibility_service_master_open_title:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v2, v3

    .line 122
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 126
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
