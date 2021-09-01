.class public final synthetic Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/settings/homepage/contextualcards/-$$Lambda$ContextualCardLookupTable$gsQ9JPvW3zYVPc0k37lyIEDUnOY;->f$0:I

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;

    invoke-static {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardLookupTable;->lambda$getCardRendererClassByViewType$0(ILcom/android/settings/homepage/contextualcards/ContextualCardLookupTable$ControllerRendererMapping;)Z

    move-result p0

    return p0
.end method
