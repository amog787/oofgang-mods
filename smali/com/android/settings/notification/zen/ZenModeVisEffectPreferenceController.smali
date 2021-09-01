.class public Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeVisEffectPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected final mEffect:I

.field protected final mKey:Ljava/lang/String;

.field protected final mMetricsCategory:I

.field protected final mParentSuppressedEffects:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;II[I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 46
    iput-object p3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    .line 47
    iput p4, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    .line 48
    iput p5, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    .line 49
    iput-object p6, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    return-void
.end method

.method private areCustomOptionsSelected()Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 135
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    .line 137
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v0, :cond_1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 59
    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110096

    .line 61
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 114
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 116
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mMetricsCategory:I

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 117
    iget-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget v0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    .line 119
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->areCustomOptionsSelected()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 122
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    const-string/jumbo v1, "zen_effect_list"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 123
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "zen_effect_status"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    const/16 p2, 0x20

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    :cond_0
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    .line 74
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->areCustomOptionsSelected()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mKey:Ljava/lang/String;

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 79
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 80
    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v5, v4, :cond_2

    aget v7, v3, v5

    .line 81
    iget-object v8, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v8, v7}, Lcom/android/settings/notification/zen/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    :cond_2
    if-eqz v6, :cond_3

    .line 85
    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 86
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 87
    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_3

    .line 89
    :cond_3
    move-object p0, p1

    check-cast p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 90
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    .line 93
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget v3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mEffect:I

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v0

    .line 95
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->mParentSuppressedEffects:[I

    if-eqz v3, :cond_5

    .line 96
    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_2
    if-ge v5, v4, :cond_6

    aget v7, v3, v5

    .line 97
    iget-object v8, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v8, v7}, Lcom/android/settings/notification/zen/ZenModeBackend;->isVisualEffectSuppressed(I)Z

    move-result v7

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v6, v2

    :cond_6
    if-eqz v6, :cond_7

    .line 101
    move-object v0, p1

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 102
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/zen/ZenModeVisEffectPreferenceController;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    .line 103
    check-cast p1, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    goto :goto_3

    .line 105
    :cond_7
    move-object p0, p1

    check-cast p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    .line 106
    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_3
    return-void
.end method
