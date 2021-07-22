.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$6I5X9CXkt_h4chR8W4I7r_0Wm4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$6I5X9CXkt_h4chR8W4I7r_0Wm4M;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardManager$6I5X9CXkt_h4chR8W4I7r_0Wm4M;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager;->lambda$onContextualCardUpdated$2(Ljava/util/Set;Lcom/android/settings/homepage/contextualcards/ContextualCard;)Z

    move-result p0

    return p0
.end method
