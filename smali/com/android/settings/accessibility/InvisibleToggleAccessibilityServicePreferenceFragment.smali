.class public Lcom/android/settings/accessibility/InvisibleToggleAccessibilityServicePreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "InvisibleToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/accessibility/ShortcutPreference$OnClickCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->callOnAlertDialogCheckboxClicked(Landroid/content/DialogInterface;I)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mShortcutPreference:Lcom/android/settings/accessibility/ShortcutPreference;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result p1

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p2, p0, p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method onDialogButtonFromShortcutToggleClicked(Landroid/view/View;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onDialogButtonFromShortcutToggleClicked(Landroid/view/View;)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->permission_enable_allow_button:I

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    :cond_0
    return-void
.end method

.method protected onInstallSwitchPreferenceToggleSwitch()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onInstallSwitchPreferenceToggleSwitch()V

    .line 41
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceDividerSwitchPreference:Lcom/android/settings/accessibility/DividerSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onToggleClicked(Lcom/android/settings/accessibility/ShortcutPreference;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ShortcutPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v0, p0, p1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->setAccessibilityServiceState(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method
