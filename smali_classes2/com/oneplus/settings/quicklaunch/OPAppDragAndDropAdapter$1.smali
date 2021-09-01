.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.source "OPAppDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSelectionStatus:I

.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

.field final synthetic val$dragElevation:F


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;IIF)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    iput p4, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->val$dragElevation:F

    invoke-direct {p0, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;-><init>(II)V

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    return-void
.end method


# virtual methods
.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 0

    .line 121
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    .line 124
    iget p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 125
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p4, 0x1

    if-ne p1, p4, :cond_0

    .line 126
    iget p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->val$dragElevation:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 125
    :goto_0
    invoke-virtual {p3, p1}, Landroid/view/View;->setElevation(F)V

    .line 127
    iput p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_1
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->onItemMove(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 133
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 135
    iput p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$1;->mSelectionStatus:I

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
