.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLoader$TBCvBYk74S9U0BdQDiW__-SXdjs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLoader$TBCvBYk74S9U0BdQDiW__-SXdjs;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLoader$TBCvBYk74S9U0BdQDiW__-SXdjs;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->lambda$filterEligibleCards$2$ContextualCardLoader(Lcom/android/settings/homepage/contextualcards/ContextualCard;)Lcom/android/settings/homepage/contextualcards/EligibleCardChecker;

    move-result-object p0

    return-object p0
.end method
