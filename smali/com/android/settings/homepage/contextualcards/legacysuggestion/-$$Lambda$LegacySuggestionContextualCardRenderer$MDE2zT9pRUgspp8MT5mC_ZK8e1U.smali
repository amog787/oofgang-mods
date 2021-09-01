.class public final synthetic Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardController;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {v0, p0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V

    return-void
.end method
