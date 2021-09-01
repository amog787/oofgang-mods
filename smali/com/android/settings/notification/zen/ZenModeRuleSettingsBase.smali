.class public abstract Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeRuleSettingsBase.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected mActionButtons:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

.field protected mContext:Landroid/content/Context;

.field protected mCustomBehaviorPreference:Landroidx/preference/Preference;

.field protected mDisableListeners:Z

.field protected mHeader:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

.field protected mId:Ljava/lang/String;

.field protected mRule:Landroid/app/AutomaticZenRule;

.field protected mSwitch:Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->DEBUG:Z

    sput-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private getZenRule()Landroid/app/AutomaticZenRule;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method private refreshRuleOrFinish()Z
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->getZenRule()Landroid/app/AutomaticZenRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    .line 159
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->setRule(Landroid/app/AutomaticZenRule;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private toastAndFinish()V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->zen_mode_rule_not_found_text:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateControls()V
    .locals 2

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDisableListeners:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControlsInternal()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateHeader()V

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->zen_mode_custom_behavior_summary_default:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->zen_mode_custom_behavior_summary:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mDisableListeners:Z

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 122
    sget p0, Lcom/android/settings/R$string;->help_uri_interruptions:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    sget-boolean v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->DEBUG:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ZenModeSettings"

    if-eqz v0, :cond_0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate getIntent()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v1, :cond_1

    const-string p1, "No intent"

    .line 67
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_1
    const-string v3, "android.service.notification.extra.RULE_ID"

    .line 72
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string p1, "rule id is null"

    .line 74
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->toastAndFinish()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 84
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string/jumbo v0, "zen_custom_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mCustomBehaviorPreference:Landroidx/preference/Preference;

    .line 86
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase$1;-><init>(Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->onCreateInternal()V

    return-void
.end method

.method protected abstract onCreateInternal()V
.end method

.method public onResume()V
    .locals 1

    .line 105
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControls()V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 116
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settings/Utils;->setActionBarShadowAnimation(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)V

    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .line 151
    invoke-super {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onZenModeConfigChanged()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->refreshRuleOrFinish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateControls()V

    :cond_0
    return-void
.end method

.method protected abstract setRule(Landroid/app/AutomaticZenRule;)Z
.end method

.method protected abstract updateControlsInternal()V
.end method

.method protected updateHeader()V
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->updatePreference(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

.method protected updateRule(Landroid/net/Uri;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 146
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
