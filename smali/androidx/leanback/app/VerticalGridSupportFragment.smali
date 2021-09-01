.class public Landroidx/leanback/app/VerticalGridSupportFragment;
.super Landroidx/leanback/app/BaseSupportFragment;
.source "VerticalGridSupportFragment.java"


# instance fields
.field final STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

.field private final mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

.field private mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

.field mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

.field private mSceneAfterEntranceTransition:Ljava/lang/Object;

.field private mSelectedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Landroidx/leanback/app/BaseSupportFragment;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    .line 56
    new-instance v0, Landroidx/leanback/app/VerticalGridSupportFragment$1;

    const-string v1, "SET_ENTRANCE_START_STATE"

    invoke-direct {v0, p0, v1}, Landroidx/leanback/app/VerticalGridSupportFragment$1;-><init>(Landroidx/leanback/app/VerticalGridSupportFragment;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    .line 127
    new-instance v0, Landroidx/leanback/app/VerticalGridSupportFragment$3;

    invoke-direct {v0, p0}, Landroidx/leanback/app/VerticalGridSupportFragment$3;-><init>(Landroidx/leanback/app/VerticalGridSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method private setupFocusSearchListener()V
    .locals 2

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroidx/leanback/R$id;->grid_frame:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/BrowseFrameLayout;

    .line 208
    invoke-virtual {p0}, Landroidx/leanback/app/BrandedSupportFragment;->getTitleHelper()Landroidx/leanback/widget/TitleHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/TitleHelper;->getOnFocusSearchListener()Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/BrowseFrameLayout;->setOnFocusSearchListener(Landroidx/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;)V

    return-void
.end method


# virtual methods
.method protected createEntranceTransition()Ljava/lang/Object;
    .locals 1

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Landroidx/leanback/R$transition;->lb_vertical_grid_entrance_transition:I

    invoke-static {p0, v0}, Landroidx/leanback/transition/TransitionHelper;->loadTransition(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method createStateMachineStates()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/leanback/app/BaseSupportFragment;->createStateMachineStates()V

    .line 66
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object p0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    invoke-virtual {v0, p0}, Landroidx/leanback/util/StateMachine;->addState(Landroidx/leanback/util/StateMachine$State;)V

    return-void
.end method

.method createStateMachineTransitions()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroidx/leanback/app/BaseSupportFragment;->createStateMachineTransitions()V

    .line 72
    iget-object v0, p0, Landroidx/leanback/app/BaseSupportFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseSupportFragment;->STATE_ENTRANCE_ON_PREPARED:Landroidx/leanback/util/StateMachine$State;

    iget-object v2, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->STATE_SET_ENTRANCE_START_STATE:Landroidx/leanback/util/StateMachine$State;

    iget-object p0, p0, Landroidx/leanback/app/BaseSupportFragment;->EVT_ON_CREATEVIEW:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/leanback/util/StateMachine;->addTransition(Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$State;Landroidx/leanback/util/StateMachine$Event;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 183
    sget v0, Landroidx/leanback/R$layout;->lb_vertical_grid_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 185
    sget v0, Landroidx/leanback/R$id;->grid_frame:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {p0, p1, v0, p3}, Landroidx/leanback/app/BrandedSupportFragment;->installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Landroidx/leanback/app/BaseSupportFragment;->getProgressBarManager()Landroidx/leanback/app/ProgressBarManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 189
    sget p1, Landroidx/leanback/R$id;->browse_grid_dock:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 190
    iget-object p0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    const/4 p0, 0x0

    throw p0
.end method

.method public onDestroyView()V
    .locals 1

    .line 219
    invoke-super {p0}, Landroidx/leanback/app/BrandedSupportFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroidx/leanback/app/BrandedSupportFragment;->onStart()V

    .line 214
    invoke-direct {p0}, Landroidx/leanback/app/VerticalGridSupportFragment;->setupFocusSearchListener()V

    return-void
.end method

.method protected runEntranceTransition(Ljava/lang/Object;)V
    .locals 0

    .line 250
    iget-object p0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mSceneAfterEntranceTransition:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/leanback/transition/TransitionHelper;->runTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method setEntranceTransitionState(Z)V
    .locals 1

    .line 254
    iget-object v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mGridPresenter:Landroidx/leanback/widget/VerticalGridPresenter;

    iget-object p0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0, p0, p1}, Landroidx/leanback/widget/VerticalGridPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V

    return-void
.end method

.method showOrHideTitle()V
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mGridViewHolder:Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;

    invoke-virtual {v0}, Landroidx/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroidx/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroidx/leanback/app/VerticalGridSupportFragment;->mSelectedPosition:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/BaseGridView;->hasPreviousViewInSameRow(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, v0}, Landroidx/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    :goto_0
    return-void
.end method
