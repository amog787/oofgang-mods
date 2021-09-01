.class public Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;
.super Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;
.source "ZenCustomRuleConfigSettings.java"


# instance fields
.field private mCallsPreference:Landroidx/preference/Preference;

.field private mMessagesPreference:Landroidx/preference/Preference;

.field private mNotificationsPreference:Landroidx/preference/Preference;

.field private mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;-><init>()V

    return-void
.end method

.method private updateSummaries()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 112
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    .line 132
    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    .line 133
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string/jumbo v4, "zen_rule_alarms"

    const/4 v5, 0x5

    const/16 v6, 0x4ca

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 132
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    .line 136
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string/jumbo v4, "zen_rule_media"

    const/4 v5, 0x6

    const/16 v6, 0x4cb

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 135
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    .line 139
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string/jumbo v4, "zen_rule_system"

    const/4 v5, 0x7

    const/16 v6, 0x53c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 138
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    .line 142
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string/jumbo v4, "zen_rule_reminders"

    const/4 v5, 0x0

    const/16 v6, 0xa7

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 141
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    new-instance v7, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;

    .line 145
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    const-string/jumbo v4, "zen_rule_events"

    const/4 v5, 0x1

    const/16 v6, 0xa8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/notification/zen/ZenRuleCustomSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II)V

    .line 144
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x645

    return p0
.end method

.method getPreferenceCategoryKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_custom_rule_configuration_category"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 121
    sget p0, Lcom/android/settings/R$xml;->zen_mode_custom_rule_configuration:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mSummaryBuilder:Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;

    .line 55
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "zen_rule_calls_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mCallsPreference:Landroidx/preference/Preference;

    .line 56
    new-instance v0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "zen_rule_messages_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mMessagesPreference:Landroidx/preference/Preference;

    .line 70
    new-instance v0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$2;-><init>(Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 83
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "zen_rule_notifications"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->mNotificationsPreference:Landroidx/preference/Preference;

    .line 84
    new-instance v0, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings$3;-><init>(Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 157
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onResume()V

    .line 158
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method

.method public onZenModeConfigChanged()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleSettingsBase;->onZenModeConfigChanged()V

    .line 104
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenCustomRuleConfigSettings;->updateSummaries()V

    return-void
.end method
