.class public Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsCustomPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 5

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x643

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x576

    .line 67
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 69
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/zen/ZenCustomRuleBlockedEffectsSettings;

    .line 70
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->createBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x649

    .line 72
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 73
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    .line 45
    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$OwvDj0Zf72QFBjfNxuAcTL4SImg;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$OwvDj0Zf72QFBjfNxuAcTL4SImg;-><init>(Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$-tEtVFSCcqdJWJ7n1QQy5jNo-5s;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleVisEffectsCustomPreferenceController$-tEtVFSCcqdJWJ7n1QQy5jNo-5s;-><init>(Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleVisEffectsCustomPreferenceController(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->lambda$displayPreference$0(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenRuleVisEffectsCustomPreferenceController(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->lambda$displayPreference$1(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->shouldHideAllVisualEffects()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 63
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method
