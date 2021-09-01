.class Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OPAppDragAndDropAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomViewHolder"
.end annotation


# instance fields
.field private final mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

.field final synthetic this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;Lcom/oneplus/settings/quicklaunch/OPAppDragCell;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    .line 63
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    .line 65
    invoke-virtual {p2}, Lcom/oneplus/settings/quicklaunch/OPAppDragCell;->getDragHandle()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method


# virtual methods
.method public getAppDragCell()Lcom/oneplus/settings/quicklaunch/OPAppDragCell;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->mAppDragCell:Lcom/oneplus/settings/quicklaunch/OPAppDragCell;

    return-object p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->access$000(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    invoke-static {p2}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter$CustomViewHolder;->this$0:Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;

    invoke-static {p1}, Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;->access$100(Lcom/oneplus/settings/quicklaunch/OPAppDragAndDropAdapter;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
