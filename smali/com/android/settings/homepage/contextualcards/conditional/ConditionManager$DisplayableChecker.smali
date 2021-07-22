.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;
.super Ljava/lang/Object;
.source "ConditionManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayableChecker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
        ">;"
    }
.end annotation


# instance fields
.field private final mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;


# direct methods
.method private constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;->mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$1;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;)V

    return-void
.end method


# virtual methods
.method public call()Lcom/android/settings/homepage/contextualcards/ContextualCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;->mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->isDisplayable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;->mController:Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;

    invoke-interface {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalCardController;->buildContextualCard()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionManager$DisplayableChecker;->call()Lcom/android/settings/homepage/contextualcards/ContextualCard;

    move-result-object p0

    return-object p0
.end method
