.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public final synthetic f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iput-object p4, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$0:Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$2:Lcom/android/settings/homepage/contextualcards/ContextualCard;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$SliceContextualCardRenderer$PoQ6CzTXlxpz1-TIl6D6SQXfMYw;->f$3:Landroid/view/View;

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->lambda$bindView$2$SliceContextualCardRenderer(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;Landroidx/slice/Slice;)V

    return-void
.end method
