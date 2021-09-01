.class public Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SummaryBuilder"
.end annotation


# static fields
.field private static final ALL_PRIORITY_CATEGORIES:[I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 117
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x40
        0x80
        0x4
        0x2
        0x1
        0x8
        0x10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_0

    .line 273
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_alarms_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_alarms_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v0, 0x40

    if-ne p1, v0, :cond_3

    if-eqz p3, :cond_2

    .line 279
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_media_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 281
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_media_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/16 v0, 0x80

    if-ne p1, v0, :cond_5

    if-eqz p3, :cond_4

    .line 285
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_system_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 287
    :cond_4
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_system_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    .line 290
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-nez p1, :cond_6

    .line 291
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne p1, v1, :cond_7

    .line 293
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 295
    :cond_7
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    if-eqz p3, :cond_9

    .line 299
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_events_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 301
    :cond_9
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_events_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-ne p1, v1, :cond_c

    if-eqz p3, :cond_b

    .line 305
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_reminders_list_first:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 307
    :cond_b
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_reminders_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    const/16 v0, 0x8

    if-ne p1, v0, :cond_12

    .line 310
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez p1, :cond_e

    if-eqz p3, :cond_d

    .line 312
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_anyone:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 314
    :cond_d
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_all_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    if-ne p1, v1, :cond_10

    if-eqz p3, :cond_f

    .line 317
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_contacts:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 319
    :cond_f
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_contacts_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-eqz p3, :cond_11

    .line 322
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_from_starred:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_11
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_starred_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/16 p2, 0x10

    if-ne p1, p2, :cond_14

    if-eqz p3, :cond_13

    .line 328
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_repeat_callers:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 330
    :cond_13
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_repeat_callers_list:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, ""

    return-object p0
.end method

.method private getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/NotificationManager$Policy;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    sget-object v1, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->ALL_PRIORITY_CATEGORIES:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    if-eqz p3, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    .line 253
    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x10

    if-ne v5, v7, :cond_1

    const/16 v7, 0x8

    .line 255
    invoke-direct {p0, p1, v7}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-nez v7, :cond_1

    goto :goto_2

    .line 260
    :cond_1
    invoke-direct {p0, v5, p1, v6}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getCategory(ILandroid/app/NotificationManager$Policy;Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private isCategoryEnabled(Landroid/app/NotificationManager$Policy;I)Z
    .locals 0

    .line 267
    iget p0, p1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getCallsSettingSummary$1(Ljava/lang/Integer;)Z
    .locals 2

    .line 160
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    const/16 v0, 0x10

    .line 161
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static synthetic lambda$getMessagesSettingSummary$2(Ljava/lang/Integer;)Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getOtherSoundCategoriesSummary$0(Ljava/lang/Integer;)Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-eq v2, v0, :cond_1

    const/16 v0, 0x40

    .line 132
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/16 v0, 0x80

    .line 133
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 134
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    .line 135
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method getAutomaticRulesSummary()Ljava/lang/String;
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_settings_summary_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$plurals;->zen_mode_settings_summary_on:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 229
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 228
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method getBlockedEffectsSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 0

    .line 213
    iget p1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    if-nez p1, :cond_0

    .line 214
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_summary_muted:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 216
    :cond_0
    invoke-static {p1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 217
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_summary_hidden:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_restrict_notifications_summary_custom:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getCallsSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 5

    .line 159
    sget-object v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$h3aIFgXiIESCHLApqgnPGjuZNLo;->INSTANCE:Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$h3aIFgXiIESCHLApqgnPGjuZNLo;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_none_calls:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 166
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_one:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 167
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    .line 166
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_calls_summary_two:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 170
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 171
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v1

    .line 169
    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getEnabledAutomaticRulesCount()I
    .locals 2

    .line 235
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    .line 236
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 238
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AutomaticZenRule;

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method getMessagesSettingSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 2

    .line 176
    sget-object v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$qokEYw2P3HXBycZFqc2_S5Snwi8;->INSTANCE:Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$qokEYw2P3HXBycZFqc2_S5Snwi8;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 178
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->zen_mode_none_messages:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method getOtherSoundCategoriesSummary(Landroid/app/NotificationManager$Policy;)Ljava/lang/String;
    .locals 7

    .line 129
    sget-object v0, Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$u59oEgSuXsIyjTLa3dovyefZIUo;->INSTANCE:Lcom/android/settings/notification/zen/-$$Lambda$ZenModeSettings$SummaryBuilder$u59oEgSuXsIyjTLa3dovyefZIUo;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledCategories(Landroid/app/NotificationManager$Policy;Ljava/util/function/Predicate;Z)Ljava/util/List;

    move-result-object p1

    .line 137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->zen_mode_other_sounds_none:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-gt v0, v3, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->zen_mode_other_sounds_list_count:I

    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v0, -0x2

    .line 149
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    .line 148
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v2

    .line 152
    :goto_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$plurals;->zen_mode_other_sounds_summary:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 155
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 152
    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getSoundSummary()Ljava/lang/String;
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 191
    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1}, Landroid/service/notification/ZenModeConfig;->getDescription(Landroid/content/Context;ZLandroid/service/notification/ZenModeConfig;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_sound_summary_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->zen_mode_sound_summary_on_with_info:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->getEnabledAutomaticRulesCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 202
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->zen_mode_sound_summary_off_with_info:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$plurals;->zen_mode_sound_summary_summary_off_info:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 205
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v1

    .line 203
    invoke-virtual {v5, v6, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 202
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 208
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeSettings$SummaryBuilder;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->zen_mode_sound_summary_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
