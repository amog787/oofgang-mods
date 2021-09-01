.class Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;
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

    .line 131
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 134
    check-cast p2, Ljava/lang/String;

    .line 135
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x3

    const-string v1, ":"

    .line 136
    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 138
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    const/4 v0, 0x1

    aget-object v1, p1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    iput-object v1, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 139
    iget-object p2, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    const/4 v1, 0x2

    aget-object v4, p1, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v3, p1, v1

    :goto_1
    iput-object v3, p2, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 140
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;

    invoke-static {p0}, Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/zen/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->updateRule(Landroid/net/Uri;)V

    return v0
.end method
