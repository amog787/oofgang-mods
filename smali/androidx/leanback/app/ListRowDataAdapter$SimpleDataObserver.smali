.class Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;
.super Landroidx/leanback/widget/ObjectAdapter$DataObserver;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/ListRowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/ListRowDataAdapter;


# direct methods
.method constructor <init>(Landroidx/leanback/app/ListRowDataAdapter;)V
    .locals 0

    .line 99
    iput-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-direct {p0}, Landroidx/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 146
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    const/16 v0, 0x10

    const/4 v1, -0x1

    .line 147
    invoke-virtual {p0, v0, v1, v1}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void
.end method

.method protected onEventFired(III)V
    .locals 0

    .line 151
    iget-object p0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/leanback/app/ListRowDataAdapter;->doNotify(III)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget v0, v0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-gt p1, v0, :cond_0

    const/4 v1, 0x2

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 106
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 105
    invoke-virtual {p0, v1, p1, p2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 3

    .line 112
    iget-object v0, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget v1, v0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    const/4 v2, 0x4

    if-gt p1, v1, :cond_0

    add-int/2addr v1, p2

    .line 113
    iput v1, v0, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 114
    invoke-virtual {p0, v2, p1, p2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void

    .line 119
    :cond_0
    invoke-virtual {v0}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 120
    iget-object p1, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget p1, p1, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 122
    invoke-virtual {p0, v2, v1, p1}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_1
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 4

    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    .line 128
    iget-object v1, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget v2, v1, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    const/16 v3, 0x8

    if-ge v0, v2, :cond_0

    sub-int/2addr v2, p2

    .line 129
    iput v2, v1, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    .line 130
    invoke-virtual {p0, v3, p1, p2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    return-void

    .line 135
    :cond_0
    invoke-virtual {v1}, Landroidx/leanback/app/ListRowDataAdapter;->initialize()V

    .line 136
    iget-object p2, p0, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->this$0:Landroidx/leanback/app/ListRowDataAdapter;

    iget p2, p2, Landroidx/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    sub-int/2addr v2, p2

    if-lez v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 139
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 138
    invoke-virtual {p0, v3, p1, v2}, Landroidx/leanback/app/ListRowDataAdapter$SimpleDataObserver;->onEventFired(III)V

    :cond_1
    return-void
.end method
