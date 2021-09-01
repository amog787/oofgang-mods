.class public Lcom/oneplus/settings/ui/OPSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "OPSpaceItemDecoration.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSpace:I

.field private mTotalSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mContext:Landroid/content/Context;

    .line 18
    iput p2, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mTotalSize:I

    .line 19
    iput p3, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mSpace:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p2

    .line 28
    iget p3, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mTotalSize:I

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    .line 29
    :goto_0
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isLTRLayout(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 30
    iget p0, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mSpace:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    if-eqz p4, :cond_2

    .line 32
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 35
    :cond_1
    iget p0, p0, Lcom/oneplus/settings/ui/OPSpaceItemDecoration;->mSpace:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    if-eqz p4, :cond_2

    .line 37
    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_1
    return-void
.end method
