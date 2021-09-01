.class public Lcom/android/settings/development/SelectDebugAppPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SelectDebugAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 47
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 108
    iget-object p0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 109
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p1
.end method

.method private updatePreferenceSummary()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug_app"

    .line 94
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->debug_app_set:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 98
    invoke-direct {p0, v0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v5

    .line 97
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->debug_app_not_set:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getActivityStartIntent()Landroid/content/Intent;
    .locals 2

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "debug_app"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "debug_app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->getActivityStartIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.settings.extra.DEBUGGABLE"

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    iget-object p0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string p3, "debug_app"

    .line 76
    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    invoke-direct {p0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->updatePreferenceSummary()V

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 85
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->debug_app_not_set:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->updatePreferenceSummary()V

    return-void
.end method
