.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;

    iput-wide p2, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;->f$1:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;->f$0:Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;

    iget-wide v1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardFeatureProviderImpl$V84fKcnoWyvn2KgzM2hfP00Ikqk;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProviderImpl;->lambda$getContextualCards$0$ContextualCardFeatureProviderImpl(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
