.class public Lcom/android/settings/development/LocalTerminalPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "LocalTerminalPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final TERMINAL_APP_PACKAGE:Ljava/lang/String; = "com.android.terminal"


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private isEnabled()Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 91
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "enable_terminal"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    const-string v0, "com.android.terminal"

    .line 34
    invoke-direct {p0, v0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.android.terminal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 55
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 56
    iget-object p0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 p2, 0x0

    const-string v0, "com.android.terminal"

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "com.android.terminal"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
