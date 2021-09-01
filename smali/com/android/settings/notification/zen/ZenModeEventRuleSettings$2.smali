.class Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 159
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 160
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    iget p2, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 161
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    iput p1, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 162
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateRule(Landroid/net/Uri;)V

    const/4 p0, 0x1

    return p0
.end method
