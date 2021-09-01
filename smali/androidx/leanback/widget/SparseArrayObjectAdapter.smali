.class public Landroidx/leanback/widget/SparseArrayObjectAdapter;
.super Landroidx/leanback/widget/ObjectAdapter;
.source "SparseArrayObjectAdapter.java"


# instance fields
.field private mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter;-><init>()V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 41
    iget-object p0, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public isImmediateNotifySupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2

    .line 82
    iget-object v0, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 84
    iget-object p1, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_1

    .line 85
    iget-object p1, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 90
    iget-object p2, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    .line 91
    invoke-virtual {p0, p1, v1}, Landroidx/leanback/widget/ObjectAdapter;->notifyItemRangeInserted(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public size()I
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method
