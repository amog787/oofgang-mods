.class public Lcom/android/settings/notification/zen/ZenModeAutomationSettings;
.super Lcom/android/settings/notification/zen/ZenModeSettingsBase;
.source "ZenModeAutomationSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field protected final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private mDeleteDialogChecked:[Z

.field private mDeleteDialogRuleIds:[Ljava/lang/String;

.field private mDeleteDialogRuleNames:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 149
    new-instance v0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$3;

    sget v1, Lcom/android/settings/R$xml;->zen_mode_automation_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;-><init>()V

    .line 48
    invoke-static {}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)[Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogChecked:[Z

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)[Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogRuleIds:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 46
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/utils/ZenServiceListing;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/settings/notification/zen/ZenModeAddAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p2, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/notification/zen/ZenModeAutomaticRulesPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    .line 91
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "ZenModeSettings"

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.service.notification.ConditionProviderService"

    .line 93
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.app.action.AUTOMATIC_ZEN_RULE"

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setConfigurationIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    .line 95
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    const-string v1, "condition provider"

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    .line 97
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 65
    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    .line 66
    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->buildPreferenceControllers(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x8e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 82
    sget p0, Lcom/android/settings/R$xml;->zen_mode_automation_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->onAttach(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "DELETE_RULE"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/notification/zen/ZenModeBackend;->removeZenRule(Ljava/lang/String;)Z

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 103
    sget v0, Lcom/android/settings/R$string;->zen_mode_delete_automatic_rules:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 104
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 109
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 142
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->getAutomaticZenRules()[Ljava/util/Map$Entry;

    move-result-object p1

    .line 112
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogRuleNames:[Ljava/lang/CharSequence;

    .line 113
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogRuleIds:[Ljava/lang/String;

    .line 114
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogChecked:[Z

    const/4 v0, 0x0

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogRuleNames:[Ljava/lang/CharSequence;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AutomaticZenRule;

    invoke-virtual {v3}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 117
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogRuleIds:[Ljava/lang/String;

    aget-object v3, p1, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->zen_mode_delete_automatic_rules:I

    .line 120
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeAutomationSettings;->mDeleteDialogRuleNames:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$2;-><init>(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;)V

    .line 121
    invoke-virtual {v0, v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$string;->zen_mode_schedule_delete:I

    new-instance v3, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/notification/zen/ZenModeAutomationSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeAutomationSettings;[Ljava/util/Map$Entry;)V

    .line 129
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return v1
.end method
