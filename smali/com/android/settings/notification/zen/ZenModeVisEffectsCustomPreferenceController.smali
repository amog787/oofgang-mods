.class public Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeVisEffectsCustomPreferenceController.java"


# static fields
.field private static final ZENMODEVISEFFECT:[Ljava/lang/String;

.field private static final ZENMODEVISEFFECT_VALUE:[I


# instance fields
.field private mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string/jumbo v0, "zen_effect_intent"

    const-string/jumbo v1, "zen_effect_light"

    const-string/jumbo v2, "zen_effect_peek"

    const-string/jumbo v3, "zen_effect_status"

    const-string/jumbo v4, "zen_effect_badge"

    const-string/jumbo v5, "zen_effect_ambient"

    const-string/jumbo v6, "zen_effect_list"

    .line 51
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 53
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT_VALUE:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->selectCustomOptions()V

    return-void
.end method

.method private launchCustomSettings()V
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->select()V

    .line 131
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/notification/zen/ZenModeBlockedEffectsSettings;

    .line 132
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget p0, Lcom/android/settings/R$string;->zen_mode_what_to_block_title:I

    .line 133
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p0, 0x578

    .line 134
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 135
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private selectCustomOptions()V
    .locals 7

    .line 87
    sget-object v0, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT:[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 88
    :goto_0
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    .line 89
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    move v2, v1

    .line 96
    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 97
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aget-object v4, v0, v2

    .line 97
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    goto :goto_4

    :cond_3
    move v3, v1

    .line 99
    :goto_4
    iget-object v4, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    sget-object v6, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->ZENMODEVISEFFECT_VALUE:[I

    aget v6, v6, v2

    invoke-virtual {v4, v6, v3}, Lcom/android/settings/notification/zen/ZenModeBackend;->saveVisualEffectsPolicy(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 103
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->launchCustomSettings()V

    :cond_5
    return-void
.end method


# virtual methods
.method protected areCustomOptionsSelected()Z
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, v0, Lcom/android/settings/notification/zen/ZenModeBackend;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 117
    invoke-static {v0}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v0

    .line 119
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

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    .line 72
    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$CCFn6jYXEaUv-6rkqVzz4PUil0o;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$CCFn6jYXEaUv-6rkqVzz4PUil0o;-><init>(Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setOnGearClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnGearClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    new-instance v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$ec-CIqwNkcKumrKjb4Fy1MV-xkY;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeVisEffectsCustomPreferenceController$ec-CIqwNkcKumrKjb4Fy1MV-xkY;-><init>(Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setOnRadioButtonClickListener(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$displayPreference$0$ZenModeVisEffectsCustomPreferenceController(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->lambda$displayPreference$0(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$1$ZenModeVisEffectsCustomPreferenceController(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->lambda$displayPreference$1(Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;)V

    return-void
.end method

.method protected select()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x577

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->mPreference:Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeVisEffectsCustomPreferenceController;->areCustomOptionsSelected()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/zen/ZenCustomRadioButtonPreference;->setChecked(Z)V

    return-void
.end method
