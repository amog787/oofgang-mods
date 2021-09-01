.class public final synthetic Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

.field public final synthetic f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;->f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;->f$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;->f$1:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;->f$2:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->lambda$initializePrimaryClick$0$ConditionContextualCardRenderer(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V

    return-void
.end method
