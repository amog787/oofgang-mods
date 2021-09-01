.class public abstract Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;
    }
.end annotation


# instance fields
.field protected mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

.field protected mParent:Landroidx/fragment/app/Fragment;

.field protected mRules:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 51
    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/zen/ZenModeBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    .line 52
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    iput-object p3, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mParent:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ComponentInfo;)Lcom/android/settings/notification/zen/ZenRuleInfo;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 88
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_2

    .line 91
    :cond_0
    instance-of v2, p1, Landroid/content/pm/ServiceInfo;

    const-string v3, "android.service.zen.automatic.ruleType"

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    invoke-static {v0, p1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v1, :cond_4

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 97
    new-instance v4, Lcom/android/settings/notification/zen/ZenRuleInfo;

    invoke-direct {v4}, Lcom/android/settings/notification/zen/ZenRuleInfo;-><init>()V

    if-eqz v2, :cond_2

    .line 99
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v0, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const-string v0, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    .line 100
    iput-object v0, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    .line 101
    iput-object v1, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->title:Ljava/lang/String;

    .line 102
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iput-object v0, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageName:Ljava/lang/String;

    .line 103
    iput-object v3, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    .line 104
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    const/4 p0, -0x1

    const-string v0, "android.service.zen.automatic.ruleInstanceLimit"

    if-eqz v2, :cond_3

    .line 106
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    .line 107
    :cond_3
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    :goto_1
    iput p0, v4, Lcom/android/settings/notification/zen/ZenRuleInfo;->ruleInstanceLimit:I

    return-object v4

    :cond_4
    :goto_2
    return-object v0
.end method

.method protected static getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.service.notification.extra.RULE_ID"

    .line 78
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object p2
.end method

.method protected static getSettingsActivity(Landroid/app/AutomaticZenRule;Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .locals 1

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    .line 122
    :cond_1
    instance-of v0, p1, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    .line 123
    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 126
    :cond_2
    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string v0, "android.service.zen.automatic.configurationActivity"

    .line 127
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 130
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method protected getRules()[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    return-object p0
.end method

.method protected showNameRuleDialog(Lcom/android/settings/notification/zen/ZenRuleInfo;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 70
    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    new-instance v1, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;-><init>(Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/zen/ZenRuleInfo;)V

    const/4 p0, 0x0

    invoke-static {p2, p0, v0, v1}, Lcom/android/settings/notification/zen/ZenRuleNameDialog;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mRules:[Ljava/util/Map$Entry;

    return-void
.end method
