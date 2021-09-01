.class public Lcom/android/settings/development/LogPersistPreferenceController;
.super Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.source "LogPersistPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    iput-object p2, p0, Lcom/android/settings/development/LogPersistPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onDisableLogPersistDialogConfirmed()V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    return-void
.end method

.method public onDisableLogPersistDialogRejected()V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    return-void
.end method

.method public showConfirmationDialog(Landroidx/preference/Preference;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/development/LogPersistPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/DisableLogPersistWarningDialog;->show(Lcom/android/settings/development/LogPersistDialogHost;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    return-void
.end method
