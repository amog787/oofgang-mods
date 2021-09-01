.class public Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;
.super Ljava/lang/Object;
.source "DndConditionCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;,
        Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;
    }
.end annotation


# static fields
.field static final DND_FILTER:Landroid/content/IntentFilter;

.field static final ID:I

.field private static mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DndConditionCardController"

    aput-object v2, v0, v1

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    .line 62
    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 63
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    .line 65
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;)J
    .locals 2

    .line 43
    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDefaultStrings(Landroid/service/notification/ZenModeConfig;)Ljava/lang/String;
    .locals 9

    .line 151
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_2

    .line 152
    iget-object v6, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 153
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 155
    sget-object v6, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    invoke-virtual {v6, v0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 157
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget v6, Lcom/android/settings/R$string;->zen_mode_settings_dnd_automatic_rule_app:I

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    if-nez v6, :cond_1

    .line 162
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_duration_summary_forever:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_1
    sget-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    invoke-virtual {v0, v6}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 167
    sget-object v0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    .line 168
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 167
    invoke-virtual {v0, v4, v5, v3}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v0

    .line 169
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    const v6, 0x104087f

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 178
    :cond_2
    :goto_0
    iget-object p1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 179
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    sget-object v6, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 182
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_settings_dnd_automatic_rule:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_4
    sget-object v6, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mZenModeConfigWrapper:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_3

    .line 190
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->zen_mode_settings_dnd_automatic_rule:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-wide v4, v6

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method private static getNextAlarm(Landroid/content/Context;)J
    .locals 2

    const-string v0, "alarm"

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 255
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->getDefaultStrings(Landroid/service/notification/ZenModeConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    .line 106
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v1, v1

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    const/16 v1, 0x17d

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_dnd_condition_turn_off:I

    .line 111
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->condition_zen_title:I

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->condition_zen_title:I

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 116
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_do_not_disturb_on_24dp:I

    .line 117
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    .line 120
    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 122
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 71
    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActionClick()V
    .locals 3

    .line 101
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "DndCondition"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 0

    .line 91
    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/notification/zen/ZenModeSettings;

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/16 p1, 0x5de

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/high16 p1, 0x30000000

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    sget p1, Lcom/android/settings/R$string;->zen_mode_settings_title:I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    sget-object v1, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->DND_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mAppContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController;->mReceiver:Lcom/android/settings/homepage/contextualcards/conditional/DndConditionCardController$Receiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
