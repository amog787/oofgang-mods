.class Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSelectionStatus:I

.field final synthetic this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragElevation:F


# direct methods
.method constructor <init>(Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;IIF)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput p4, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    .line 110
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    return-void
.end method


# virtual methods
.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 117
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 120
    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 121
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 122
    iget p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragElevation:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setElevation(F)V

    .line 123
    iput p2, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_1
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 133
    iput p1, p0, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
