.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.source "ConditionalContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActionText:Ljava/lang/CharSequence;

.field private mConditionId:J

.field private mMetricsConstant:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;)Ljava/lang/CharSequence;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;
    .locals 2

    const-wide/high16 v0, -0x3fa7000000000000L    # -100.0

    .line 91
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;->setRankingScore(D)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;

    .line 92
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$1;)V

    return-object v0
.end method

.method public setActionText(Ljava/lang/CharSequence;)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mActionText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->setCardType(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    const/4 p0, 0x0

    throw p0
.end method

.method public setCardType(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
    .locals 1

    .line 86
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot change card type for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConditionId(J)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
    .locals 0

    .line 70
    iput-wide p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mConditionId:J

    return-object p0
.end method

.method public setMetricsConstant(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;
    .locals 0

    .line 75
    iput p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard$Builder;->mMetricsConstant:I

    return-object p0
.end method
