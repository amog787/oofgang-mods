.class final Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;
.super Ljava/lang/Object;
.source "RowsSupportFragment.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/app/RowsSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RowViewHolderExtra"
.end annotation


# static fields
.field static final sSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field final mRowPresenter:Landroidx/leanback/widget/RowPresenter;

.field final mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

.field final mSelectAnimator:Landroid/animation/TimeAnimator;

.field final mSelectAnimatorDurationInUse:I

.field final mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

.field mSelectLevelAnimDelta:F

.field mSelectLevelAnimStart:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->sSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    .line 96
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroidx/leanback/widget/Presenter;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/RowPresenter;

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    .line 97
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroidx/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    .line 98
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 102
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/leanback/R$integer;->lb_browse_rows_anim_duration:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    .line 104
    sget-object p1, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->sSelectAnimatorInterpolator:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method animateSelect(ZZ)V
    .locals 1

    .line 130
    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->end()V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 133
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, p0, p1}, Landroidx/leanback/widget/RowPresenter;->setSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;F)V

    goto :goto_1

    .line 134
    :cond_1
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/RowPresenter;->getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 135
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object v0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p2, v0}, Landroidx/leanback/widget/RowPresenter;->getSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;)F

    move-result p2

    iput p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    sub-float/2addr p1, p2

    .line 136
    iput p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    .line 137
    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p0}, Landroid/animation/TimeAnimator;->start()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 0

    .line 109
    iget-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p1}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->updateSelect(JJ)V

    :cond_0
    return-void
.end method

.method updateSelect(JJ)V
    .locals 2

    .line 116
    iget p3, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorDurationInUse:I

    int-to-long v0, p3

    cmp-long p4, p1, v0

    if-ltz p4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 118
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {p2}, Landroid/animation/TimeAnimator;->end()V

    goto :goto_0

    :cond_0
    long-to-double p1, p1

    int-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p1, p1

    .line 122
    :goto_0
    iget-object p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectAnimatorInterpolatorInUse:Landroid/view/animation/Interpolator;

    if-eqz p2, :cond_1

    .line 123
    invoke-interface {p2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 125
    :cond_1
    iget p2, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimStart:F

    iget p3, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mSelectLevelAnimDelta:F

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    .line 126
    iget-object p1, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowPresenter:Landroidx/leanback/widget/RowPresenter;

    iget-object p0, p0, Landroidx/leanback/app/RowsSupportFragment$RowViewHolderExtra;->mRowViewHolder:Landroidx/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {p1, p0, p2}, Landroidx/leanback/widget/RowPresenter;->setSelectLevel(Landroidx/leanback/widget/Presenter$ViewHolder;F)V

    return-void
.end method
