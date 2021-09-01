.class Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/zen/ZenRuleNameDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 82
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    iget-object v0, p2, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$200(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object p2

    const/16 v1, 0x4f3

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 87
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p2, p2, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    iget-object p2, p1, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$300(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener$1;->this$1:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController$EditRuleNameClickListener;->this$0:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;->access$100(Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
