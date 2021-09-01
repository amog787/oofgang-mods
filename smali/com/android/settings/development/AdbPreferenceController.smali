.class public Lcom/android/settings/development/AdbPreferenceController;
.super Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;
.source "AdbPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public onAdbDialogConfirmed()V
    .locals 1

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    return-void
.end method

.method public onAdbDialogDismissed()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->writeAdbSetting(Z)V

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractEnableAdbPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public showConfirmationDialog(Landroidx/preference/Preference;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/development/AdbPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/development/EnableAdbWarningDialog;->show(Landroidx/fragment/app/Fragment;)V

    return-void
.end method
