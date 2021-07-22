.class Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController$1;
.super Ljava/lang/Object;
.source "ConditionContextualCardController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->onConditionsChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

.field final synthetic val$conditionalCards:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;Ljava/util/Map;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController$1;->val$conditionalCards:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;)Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController$1;->this$0:Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;

    invoke-static {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;->access$000(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController;)Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardController$1;->val$conditionalCards:Ljava/util/Map;

    invoke-interface {v0, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardUpdateListener;->onContextualCardUpdated(Ljava/util/Map;)V

    return-void
.end method
