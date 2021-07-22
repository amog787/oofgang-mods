.class public Lcom/android/settings/notification/zen/ZenModeVisEffectsNonePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsNonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;


# instance fields
.field private mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClick(Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;)V
    .locals 3

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x574

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 73
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 p1, 0x1ff

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectsNonePreferenceController;->mPreference:Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/OPZenNoDividerCustomRadioButtonPreference;->setChecked(Z)V

    return-void
.end method
