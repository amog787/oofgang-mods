.class public Lcom/android/settings/notification/zen/ZenCustomRuleCallsSettings;
.super Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleCallsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    .line 58
    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;

    .line 59
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const-string/jumbo v3, "zen_mode_calls"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleRepeatCallersPreferenceController;

    .line 61
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00d7

    .line 62
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const-string/jumbo v4, "zen_mode_repeat_callers"

    invoke-direct {v1, p1, v4, v2, v3}, Lcom/android/settings/notification/zen/ZenRuleRepeatCallersPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleStarredContactsPreferenceController;

    .line 64
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    const/4 v3, 0x3

    const-string/jumbo v4, "zen_mode_starred_contacts_callers"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/settings/notification/zen/ZenRuleStarredContactsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;ILjava/lang/String;)V

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x64b

    return p0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_settings_category_calls"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 47
    sget p0, Lcom/android/settings/R$xml;->zen_mode_custom_rule_calls_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public updatePreferences()V
    .locals 5

    .line 75
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->updatePreferences()V

    .line 76
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "footer_preference"

    .line 77
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->zen_mode_custom_calls_footer:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 79
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
