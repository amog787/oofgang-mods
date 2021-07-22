.class Lcom/android/settings/notification/zen/ZenRulePreference$2;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenRulePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenRulePreference;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 152
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->access$100(Lcom/android/settings/notification/zen/ZenRulePreference;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenRulePreference;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v1, p1, Lcom/android/settings/notification/zen/ZenRulePreference;->mId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 154
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/zen/ZenRulePreference;->access$200(Lcom/android/settings/notification/zen/ZenRulePreference;Z)V

    .line 155
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenRulePreference$2;->this$0:Lcom/android/settings/notification/zen/ZenRulePreference;

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRulePreference;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenRulePreference;->setAttributes(Landroid/app/AutomaticZenRule;)V

    return-void
.end method
