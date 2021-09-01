.class public Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "ZenRuleCallsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$array;->zen_mode_contacts_values:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;->mListValues:[Ljava/lang/String;

    return-void
.end method

.method private updateFromContactsValue(Landroidx/preference/Preference;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    check-cast p1, Landroidx/preference/ListPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getContactsCallsSummary(Landroid/service/notification/ZenPolicy;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    .line 71
    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v0

    .line 70
    invoke-static {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getKeyFromZenPolicySetting(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;->getIndexOfSendersValue(Ljava/lang/String;)I

    move-result p0

    aget-object p0, v1, p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected getIndexOfSendersValue(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 80
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 52
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeBackend;->getZenPolicySettingFromPrefKey(Ljava/lang/String;)I

    move-result p2

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x642

    .line 54
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x643

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0xaa

    .line 53
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v1, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v2, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v2}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 57
    invoke-virtual {v1, p2}, Landroid/service/notification/ZenPolicy$Builder;->allowCalls(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object p2

    .line 58
    invoke-virtual {p2}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object p2

    .line 56
    invoke-virtual {v0, p2}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 59
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2, v0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return v4
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleCallsPreferenceController;->updateFromContactsValue(Landroidx/preference/Preference;)V

    return-void
.end method
