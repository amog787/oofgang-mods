.class public Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;
.super Ljava/lang/Object;
.source "OpOtaConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;
    }
.end annotation


# static fields
.field static final ID:I


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "OpOtaConditionController"

    aput-object v2, v0, v1

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    .line 31
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController$Receiver;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mConditionManager:Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;

    return-object p0
.end method

.method private isIntentResolvable(Landroid/content/Intent;)Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 4

    .line 82
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->ID:I

    int-to-long v1, v1

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    const/16 v1, 0x270f

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->oneplus_ota_available:I

    .line 87
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setName(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_ota_available:I

    .line 88
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setTitleText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_condition_ota_summary:I

    .line 89
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setSummaryText(Ljava/lang/String;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$drawable;->ic_system_update:I

    .line 90
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setViewType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 95
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public getId()J
    .locals 2

    .line 36
    sget p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->ID:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public isDisplayable()Z
    .locals 4

    .line 42
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isNAVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "has_new_version_to_update"

    .line 45
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 50
    :goto_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->mAppContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "strong_prompt_ota"

    .line 48
    invoke-static {p0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/16 v3, 0x64

    if-ne p0, v3, :cond_2

    move v1, v2

    .line 51
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "systemHasUpdate = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "    strongPromptOTA = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OPOTACondition"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onActionClick()V
    .locals 0

    return-void
.end method

.method public onPrimaryClick(Landroid/content/Context;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.CheckUpdate"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/contextualcards/conditional/OpOtaConditionController;->isIntentResolvable(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p0, "OPOTACondition"

    const-string p1, "Not found Activity for: oneplus.intent.action.CheckUpdate"

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startMonitoringStateChange()V
    .locals 0

    return-void
.end method

.method public stopMonitoringStateChange()V
    .locals 0

    return-void
.end method
