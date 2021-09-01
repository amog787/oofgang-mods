.class public Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;
.super Ljava/lang/Object;
.source "ContextualCardLookupTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;
    }
.end annotation


# static fields
.field static final LOOKUP_TABLE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$1;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->LOOKUP_TABLE:Ljava/util/Set;

    return-void
.end method

.method public static getCardControllerClass(I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardController;",
            ">;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->LOOKUP_TABLE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    .line 107
    iget v2, v1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mCardType:I

    if-ne v2, p0, :cond_0

    .line 108
    iget-object p0, v1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mControllerClass:Ljava/lang/Class;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCardRendererClassByViewType(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 116
    sget-object v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->LOOKUP_TABLE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;-><init>(I)V

    .line 117
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_2

    .line 118
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 126
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mRendererClass:Ljava/lang/Class;

    return-object p0

    .line 123
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Have duplicate VIEW_TYPE in lookup table."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string p0, "ContextualCardLookup"

    const-string v0, "No matching mapping"

    .line 119
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$getCardRendererClassByViewType$0(ILcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)Z
    .locals 0

    .line 117
    iget p1, p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;->mViewType:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
