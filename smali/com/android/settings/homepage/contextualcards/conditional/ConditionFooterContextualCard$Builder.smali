.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
.source "ConditionFooterContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;->build()Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;
    .locals 2

    .line 47
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$1;)V

    return-object v0
.end method

.method public bridge synthetic setCardType(I)Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;->setCardType(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;

    const/4 p0, 0x0

    throw p0
.end method

.method public setCardType(I)Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;
    .locals 1

    .line 42
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot change card type for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-class v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionFooterContextualCard$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
