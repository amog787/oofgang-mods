.class public Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;
.super Landroidx/leanback/widget/RowPresenter;
.source "FullWidthDetailsOverviewRowPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;,
        Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;
    }
.end annotation


# static fields
.field static final sHandler:Landroid/os/Handler;


# instance fields
.field mActionClickedListener:Landroidx/leanback/widget/OnActionClickedListener;

.field private mActionsBackgroundColor:I

.field private mActionsBackgroundColorSet:Z

.field private mAlignmentMode:I

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field final mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

.field final mDetailsPresenter:Landroidx/leanback/widget/Presenter;

.field protected mInitialState:I

.field private mParticipatingEntranceTransition:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->sHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected createRowViewHolder(Landroid/view/ViewGroup;)Landroidx/leanback/widget/RowPresenter$ViewHolder;
    .locals 3

    .line 529
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 531
    new-instance v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;-><init>(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroid/view/View;Landroidx/leanback/widget/Presenter;Landroidx/leanback/widget/DetailsOverviewLogoPresenter;)V

    .line 532
    iget-object p1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v1, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {p1, v1, v0, p0}, Landroidx/leanback/widget/DetailsOverviewLogoPresenter;->setContext(Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V

    .line 533
    iget p1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mInitialState:I

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->setState(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    .line 535
    new-instance p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;

    invoke-direct {p1, p0, v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ActionsItemBridgeAdapter;-><init>(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    iput-object p1, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionBridgeAdapter:Landroidx/leanback/widget/ItemBridgeAdapter;

    .line 536
    iget-object p1, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    .line 537
    iget-boolean v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColorSet:Z

    if-eqz v1, :cond_0

    .line 538
    iget v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mBackgroundColor:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 540
    :cond_0
    iget-boolean v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColorSet:Z

    if-eqz v1, :cond_1

    .line 541
    sget v1, Landroidx/leanback/R$id;->details_overview_actions_background:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mActionsBackgroundColor:I

    .line 542
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    const/4 v1, 0x1

    .line 544
    invoke-static {p1, v1}, Landroidx/leanback/widget/RoundedRectHelper;->setClipToRoundedOutline(Landroid/view/View;Z)V

    .line 546
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 547
    iget-object p1, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 550
    :cond_2
    iget-object p1, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mActionsRow:Landroidx/leanback/widget/HorizontalGridView;

    new-instance v1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$1;-><init>(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    invoke-virtual {p1, v1}, Landroidx/leanback/widget/BaseGridView;->setOnUnhandledKeyListener(Landroidx/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V

    return-object v0
.end method

.method protected getLayoutResourceId()I
    .locals 0

    .line 524
    sget p0, Landroidx/leanback/R$layout;->lb_fullwidth_details_overview:I

    return p0
.end method

.method protected isClippingChildren()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isUsingDefaultSelectEffect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 2

    .line 564
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->onBindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 566
    check-cast p2, Landroidx/leanback/widget/DetailsOverviewRow;

    .line 567
    check-cast p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 569
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v1, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v0, v1, p2}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 570
    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v0, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2}, Landroidx/leanback/widget/DetailsOverviewRow;->getItem()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroidx/leanback/widget/Presenter;->onBindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 571
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onBind()V

    return-void
.end method

.method protected onLayoutLogo(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 1

    .line 635
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object p2

    iget-object p2, p2, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 637
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 638
    iget p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 641
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sub-int/2addr p0, v0

    invoke-virtual {p3, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 650
    :goto_0
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    .line 654
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Landroidx/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iget v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    div-int/2addr v0, p1

    sub-int/2addr p0, v0

    iput p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 665
    iput p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 658
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Landroidx/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 659
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$dimen;->lb_details_v2_actions_height:I

    .line 660
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p0, p1

    .line 661
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$dimen;->lb_details_v2_description_margin_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 668
    :goto_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onLayoutOverviewFrame(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    .line 680
    :goto_0
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_9

    .line 682
    :cond_2
    iget-object p2, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 687
    iget-object p3, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object v3

    .line 688
    invoke-virtual {p1}, Landroidx/leanback/widget/RowPresenter$ViewHolder;->getRow()Landroidx/leanback/widget/Row;

    move-result-object v4

    check-cast v4, Landroidx/leanback/widget/DetailsOverviewRow;

    .line 687
    invoke-virtual {p3, v3, v4}, Landroidx/leanback/widget/DetailsOverviewLogoPresenter;->isBoundToImage(Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroidx/leanback/widget/DetailsOverviewRow;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 689
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getLogoViewHolder()Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    move-result-object p3

    iget-object p3, p3, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2

    :cond_3
    move p3, v2

    .line 691
    :goto_2
    iget p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mAlignmentMode:I

    if-eq p0, v1, :cond_5

    if-eqz v0, :cond_4

    .line 695
    sget p0, Landroidx/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_4

    .line 700
    :cond_4
    sget p0, Landroidx/leanback/R$dimen;->lb_details_v2_logo_margin_start:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p3, p0

    :goto_3
    move p0, v2

    goto :goto_4

    :cond_5
    if-eqz v0, :cond_6

    .line 706
    sget p0, Landroidx/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p0, p3

    goto :goto_4

    .line 711
    :cond_6
    sget p0, Landroidx/leanback/R$dimen;->lb_details_v2_left:I

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    goto :goto_3

    .line 717
    :goto_4
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    move v3, v2

    goto :goto_5

    .line 719
    :cond_7
    sget v3, Landroidx/leanback/R$dimen;->lb_details_v2_blank_height:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_5
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 720
    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 721
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getOverviewView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getDetailsDescriptionFrame()Landroid/view/ViewGroup;

    move-result-object p0

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 725
    invoke-virtual {v1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 726
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getActionsRow()Landroid/view/ViewGroup;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 730
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    if-eqz v0, :cond_8

    goto :goto_6

    .line 732
    :cond_8
    sget p3, Landroidx/leanback/R$dimen;->lb_details_v2_actions_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_6
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 733
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method

.method protected onRowViewAttachedToWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    .line 600
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onRowViewAttachedToWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 601
    check-cast p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 602
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v1, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Presenter;->onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 603
    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object p1, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Presenter;->onViewAttachedToWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method protected onRowViewDetachedFromWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 2

    .line 608
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onRowViewDetachedFromWindow(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 609
    check-cast p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 610
    iget-object v0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v1, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 611
    iget-object p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object p1, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    return-void
.end method

.method protected onSelectLevelChanged(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 0

    .line 590
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onSelectLevelChanged(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    .line 591
    invoke-virtual {p0}, Landroidx/leanback/widget/RowPresenter;->getSelectEffectEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 592
    check-cast p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 593
    iget-object p0, p1, Landroidx/leanback/widget/RowPresenter$ViewHolder;->mColorDimmer:Landroidx/leanback/graphics/ColorOverlayDimmer;

    invoke-virtual {p0}, Landroidx/leanback/graphics/ColorOverlayDimmer;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    .line 594
    iget-object p1, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mOverviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    :cond_0
    return-void
.end method

.method protected onStateChanged(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutOverviewFrame(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    .line 760
    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onLayoutLogo(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;IZ)V

    return-void
.end method

.method protected onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V
    .locals 3

    .line 576
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 577
    invoke-virtual {v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->onUnbind()V

    .line 578
    iget-object v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsPresenter:Landroidx/leanback/widget/Presenter;

    iget-object v2, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsDescriptionViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroidx/leanback/widget/Presenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 579
    iget-object v1, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mDetailsOverviewLogoPresenter:Landroidx/leanback/widget/DetailsOverviewLogoPresenter;

    iget-object v0, v0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mDetailsLogoViewHolder:Landroidx/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {v1, v0}, Landroidx/leanback/widget/Presenter;->onUnbindViewHolder(Landroidx/leanback/widget/Presenter$ViewHolder;)V

    .line 580
    invoke-super {p0, p1}, Landroidx/leanback/widget/RowPresenter;->onUnbindRowViewHolder(Landroidx/leanback/widget/RowPresenter$ViewHolder;)V

    return-void
.end method

.method public setEntranceTransitionState(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V
    .locals 0

    .line 766
    invoke-super {p0, p1, p2}, Landroidx/leanback/widget/RowPresenter;->setEntranceTransitionState(Landroidx/leanback/widget/RowPresenter$ViewHolder;Z)V

    .line 767
    iget-boolean p0, p0, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->mParticipatingEntranceTransition:Z

    if-eqz p0, :cond_1

    .line 768
    iget-object p0, p1, Landroidx/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final setState(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V
    .locals 1

    .line 744
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 745
    invoke-virtual {p1}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->getState()I

    move-result v0

    .line 746
    iput p2, p1, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;->mState:I

    .line 747
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter;->onStateChanged(Landroidx/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;I)V

    :cond_0
    return-void
.end method
