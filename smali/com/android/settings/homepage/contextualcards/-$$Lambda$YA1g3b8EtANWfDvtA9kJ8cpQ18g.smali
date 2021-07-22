.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$YA1g3b8EtANWfDvtA9kJ8cpQ18g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
