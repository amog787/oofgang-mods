.class public Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "ZenRuleCustomPolicyPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->setCustomPolicy()V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->setCustomPolicy()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 2

    .line 74
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->createBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x645

    .line 77
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 78
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private setCustomPolicy()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    new-instance v2, Landroid/service/notification/ZenPolicy;

    invoke-direct {v2}, Landroid/service/notification/ZenPolicy;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/zen/ZenModeBackend;->setDefaultZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    .line 44
    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleCustomPolicyPreferenceController$68YWVR_aA2gsLEr_OrC4U05Jq5A;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleCustomPolicyPreferenceController$68YWVR_aA2gsLEr_OrC4U05Jq5A;-><init>(Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleCustomPolicyPreferenceController$k5C7dENqChFhKqRhtwG8Tl8gNSE;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenRuleCustomPolicyPreferenceController$k5C7dENqChFhKqRhtwG8Tl8gNSE;-><init>(Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$ZenRuleCustomPolicyPreferenceController(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->lambda$displayPreference$0(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenRuleCustomPolicyPreferenceController(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->lambda$displayPreference$1(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-nez p1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleCustomPolicyPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void
.end method
