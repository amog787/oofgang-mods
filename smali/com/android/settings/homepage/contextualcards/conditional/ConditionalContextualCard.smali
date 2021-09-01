.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "ConditionalContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
    }
.end annotation


# static fields
.field static final UNSUPPORTED_RANKING_SCORE:D = -100.0


# instance fields
.field private final mActionText:Ljava/lang/CharSequence;

.field private final mConditionId:J

.field private final mMetricsConstant:I


# direct methods
.method private constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    .line 41
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    .line 42
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->access$100(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    .line 43
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->access$200(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mActionText:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionText()Ljava/lang/CharSequence;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mActionText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getCardType()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getConditionId()J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mConditionId:J

    return-wide v0
.end method

.method public getMetricsConstant()I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->mMetricsConstant:I

    return p0
.end method
