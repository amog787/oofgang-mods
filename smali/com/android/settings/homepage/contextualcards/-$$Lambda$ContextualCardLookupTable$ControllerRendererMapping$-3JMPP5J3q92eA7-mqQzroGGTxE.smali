.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$ControllerRendererMapping$-3JMPP5J3q92eA7-mqQzroGGTxE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->lambda$compareTo$0(Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)I

    move-result p0

    return p0
.end method
