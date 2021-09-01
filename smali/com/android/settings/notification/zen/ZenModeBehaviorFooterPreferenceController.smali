.class public Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "ZenModeBehaviorFooterPreferenceController.java"


# instance fields
.field private final mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string v0, "footer_preference"

    .line 37
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    iput p3, p0, Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;->mTitleRes:I

    return-void
.end method

.method private isDeprecatedZenMode(I)Z
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected getFooterText()Ljava/lang/String;
    .locals 5

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 62
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 63
    invoke-direct {p0, v1}, Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 65
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 67
    sget-object v4, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-virtual {v4, v1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_app_set_behavior:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_qs_set_behavior:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 78
    :cond_1
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 79
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-direct {p0, v4}, Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;->isDeprecatedZenMode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_app_set_behavior:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 83
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 89
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_unknown_app_set_behavior:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;->mTitleRes:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "footer_preference"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeBehaviorFooterPreferenceController;->getFooterText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
