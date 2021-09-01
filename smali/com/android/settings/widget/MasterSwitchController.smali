.class public Lcom/android/settings/widget/MasterSwitchController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "MasterSwitchController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPreference:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 38
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterSwitchPreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz v0, :cond_1

    .line 74
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 77
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    return-void
.end method

.method public startListening()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public updateTitle(Z)V
    .locals 0

    return-void
.end method
