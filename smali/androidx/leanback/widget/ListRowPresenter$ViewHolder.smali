.class public Landroidx/leanback/widget/ListRowPresenter$ViewHolder;
.super Landroidx/leanback/widget/RowPresenter$ViewHolder;
.source "ListRowPresenter.java"


# instance fields
.field final mGridView:Landroidx/leanback/widget/HorizontalGridView;

.field mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;


# virtual methods
.method public final getBridgeAdapter()Landroidx/leanback/widget/ItemBridgeAdapter;
    .locals 0

    .line 101
    iget-object p0, p0, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->mItemBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    return-object p0
.end method

.method public final getGridView()Landroidx/leanback/widget/HorizontalGridView;
    .locals 0

    .line 93
    iget-object p0, p0, Landroidx/leanback/widget/ListRowPresenter$ViewHolder;->mGridView:Landroidx/leanback/widget/HorizontalGridView;

    return-object p0
.end method
