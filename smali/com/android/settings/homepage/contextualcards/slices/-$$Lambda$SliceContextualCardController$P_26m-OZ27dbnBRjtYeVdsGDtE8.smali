.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

.field public final synthetic f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardController$P_26m-OZ27dbnBRjtYeVdsGDtE8;->f$1:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardController;->lambda$onDismissed$0$SliceContextualCardController(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method
