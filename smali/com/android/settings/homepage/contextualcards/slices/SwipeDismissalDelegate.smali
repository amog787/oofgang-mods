.class public Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SwipeDismissalDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->mListener:Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;

    return-void
.end method

.method private getSwipeableView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;
    .locals 1

    .line 116
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    sget v0, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    if-ne p0, v0, :cond_0

    .line 117
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    return-object p0

    .line 119
    :cond_0
    check-cast p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;

    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/slices/SliceFullCardRendererHelper$SliceViewHolder;->sliceView:Landroidx/slice/widget/SliceView;

    return-object p0
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 86
    invoke-direct {p0, p2}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->getSwipeableView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object p0

    .line 87
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object p1

    invoke-interface {p1, p0}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->clearView(Landroid/view/View;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 55
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    sget p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    const/4 v0, 0x0

    if-eq p0, p1, :cond_1

    .line 56
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    sget p1, Lcom/android/settings/homepage/contextualcards/slices/SliceContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 60
    :cond_1
    :goto_0
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->dismissal_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/16 p0, 0xc

    .line 65
    invoke-static {v0, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    .line 94
    invoke-direct {p0, p3}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->getSwipeableView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroid/view/View;

    move-result-object v3

    .line 95
    iget-object p0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->dismissal_icon_start:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 96
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->dismissal_icon_end:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x0

    cmpl-float v1, p4, v0

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-lez v1, :cond_0

    .line 99
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 102
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 103
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getDefaultUIUtil()Landroidx/recyclerview/widget/ItemTouchUIUtil;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchUIUtil;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate;->mListener:Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/SwipeDismissalDelegate$Listener;->onSwiped(I)V

    return-void
.end method
