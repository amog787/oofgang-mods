.class Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;
.super Landroidx/leanback/widget/ItemBridgeAdapter;
.source "FullWidthDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionsItemBridgeAdapter"
.end annotation


# instance fields
.field mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

.field final synthetic this$0:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0

    .line 112
    iput-object p1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    invoke-direct {p0}, Landroidx/leanback/widget/ItemBridgeAdapter;-><init>()V

    .line 113
    iput-object p2, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    .line 147
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 148
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onBind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    .line 119
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    iget-object v0, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    .line 122
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    new-instance v2, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;

    invoke-direct {v2, p0, p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter$1;-><init>(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 121
    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/Presenter;->setOnClickListener(Landroidx/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onDetachedFromWindow(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 152
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v0, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 153
    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->checkFirstAndLastPosition(Z)V

    return-void
.end method

.method public onUnbind(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 139
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->mViewHolder:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroidx/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;->this$0:Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

    if-eqz p0, :cond_1

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/Presenter;->setOnClickListener(Landroidx/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
