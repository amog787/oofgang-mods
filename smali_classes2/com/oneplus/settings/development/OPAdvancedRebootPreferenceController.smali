.class public Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OPAdvancedRebootPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 65
    :cond_0
    new-instance v0, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    const-string v1, "advanced_reboot"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;-><init>(Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "advanced_reboot"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 89
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "advanced_reboot"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 92
    :cond_0
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_1

    return v2

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 97
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 95
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method isAdminUser()Z
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController;->mSettingObserver:Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/development/OPAdvancedRebootPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 103
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 108
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "advanced_reboot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
