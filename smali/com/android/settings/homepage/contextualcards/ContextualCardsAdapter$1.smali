.class Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ContextualCardsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsAdapter;->mContextualCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getViewType()I

    move-result p0

    .line 108
    sget p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    if-eq p0, p1, :cond_1

    sget p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
