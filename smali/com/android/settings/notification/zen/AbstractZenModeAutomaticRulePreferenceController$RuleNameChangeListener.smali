.class public Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;
.super Ljava/lang/Object;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuleNameChangeListener"
.end annotation


# instance fields
.field mRuleInfo:Lcom/android/settings/notification/zen/ZenRuleInfo;

.field final synthetic this$0:Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/zen/ZenRuleInfo;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/zen/ZenRuleInfo;

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 12

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;

    iget-object v1, v0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {v0}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->access$000(Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x4f3

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 148
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/zen/ZenRuleInfo;

    iget-object v6, v1, Lcom/android/settings/notification/zen/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v7, v1, Lcom/android/settings/notification/zen/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v8, v1, Lcom/android/settings/notification/zen/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/zen/ZenModeBackend;->addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/zen/ZenRuleInfo;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings/notification/zen/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
