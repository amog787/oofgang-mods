.class public abstract Landroidx/leanback/app/OnboardingSupportFragment;
.super Landroidx/fragment/app/Fragment;
.source "OnboardingSupportFragment.java"


# static fields
.field private static final HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static sSlideDistance:I


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrowBackgroundColor:I

.field private mArrowBackgroundColorSet:Z

.field private mArrowColor:I

.field private mArrowColorSet:Z

.field mCurrentPageIndex:I

.field mDescriptionView:Landroid/widget/TextView;

.field private mDescriptionViewTextColor:I

.field private mDescriptionViewTextColorSet:Z

.field private mDotBackgroundColor:I

.field private mDotBackgroundColorSet:Z

.field mEnterAnimationFinished:Z

.field private mIconResourceId:I

.field mIsLtr:Z

.field mLogoAnimationFinished:Z

.field private mLogoResourceId:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMainIconView:Landroid/widget/ImageView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

.field mStartButton:Landroid/view/View;

.field private mStartButtonText:Ljava/lang/CharSequence;

.field private mStartButtonTextSet:Z

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;

.field mTitleView:Landroid/widget/TextView;

.field private mTitleViewTextColor:I

.field private mTitleViewTextColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 170
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    .line 205
    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    .line 209
    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    .line 213
    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    .line 217
    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    .line 227
    new-instance v0, Landroidx/leanback/app/OnboardingSupportFragment$1;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingSupportFragment$1;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 242
    new-instance v0, Landroidx/leanback/app/OnboardingSupportFragment$2;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingSupportFragment$2;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;)V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;
    .locals 5

    .line 975
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const v2, 0x800005

    if-eq p3, v2, :cond_3

    :cond_1
    if-nez p0, :cond_2

    const p0, 0x800003

    if-eq p3, p0, :cond_3

    :cond_2
    const/4 p0, 0x5

    if-ne p3, p0, :cond_4

    :cond_3
    move p0, v0

    goto :goto_1

    :cond_4
    move p0, v1

    :goto_1
    const/4 p3, 0x0

    const/4 v2, 0x2

    if-eqz p2, :cond_6

    .line 982
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 983
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v2, [F

    if-eqz p0, :cond_5

    .line 984
    sget p0, Landroidx/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    goto :goto_2

    :cond_5
    sget p0, Landroidx/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    neg-int p0, p0

    :goto_2
    int-to-float p0, p0

    aput p0, v4, v1

    aput p3, v4, v0

    .line 983
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 985
    sget-object p3, Landroidx/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 986
    sget-object p3, Landroidx/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 988
    :cond_6
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    invoke-static {p1, p2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 989
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v4, v2, [F

    aput p3, v4, v1

    if-eqz p0, :cond_7

    .line 990
    sget p0, Landroidx/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    goto :goto_3

    :cond_7
    sget p0, Landroidx/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    neg-int p0, p0

    :goto_3
    int-to-float p0, p0

    aput p0, v4, v0

    .line 989
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 991
    sget-object p3, Landroidx/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 992
    sget-object p3, Landroidx/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_4
    const-wide/16 v3, 0x1a1

    .line 994
    invoke-virtual {p2, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 995
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {p0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 997
    invoke-virtual {p0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 998
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p2, p3, v1

    aput-object p0, p3, v0

    .line 999
    invoke-virtual {p1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p2, 0x0

    cmp-long p0, p4, p2

    if-lez p0, :cond_8

    .line 1001
    invoke-virtual {p1, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_8
    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0

    .line 561
    iget-object p0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private onPageChangedInternal(I)V
    .locals 10

    .line 888
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 891
    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 898
    iget-object v4, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x800003

    const-wide/16 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v4, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v7, 0x21

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v4, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const v6, 0x800005

    const-wide/16 v7, 0x1f4

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v5, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800005

    const-wide/16 v8, 0x215

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 907
    :cond_1
    iget-object v5, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x800005

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v4, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const v6, 0x800005

    const-wide/16 v7, 0x21

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v4, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v5, 0x1

    const v6, 0x800003

    const-wide/16 v7, 0x1f4

    invoke-direct/range {v3 .. v8}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v5, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800003

    const-wide/16 v8, 0x215

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v3

    .line 916
    new-instance v4, Landroidx/leanback/app/OnboardingSupportFragment$6;

    invoke-direct {v4, p0, v3}, Landroidx/leanback/app/OnboardingSupportFragment$6;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;I)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 924
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 926
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v3

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    .line 927
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 928
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_fade_out:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 930
    iget-object v3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 931
    new-instance v3, Landroidx/leanback/app/OnboardingSupportFragment$7;

    invoke-direct {v3, p0}, Landroidx/leanback/app/OnboardingSupportFragment$7;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 937
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_start_button_fade_in:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 940
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 941
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 942
    :cond_2
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne p1, v3, :cond_3

    .line 943
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 944
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_fade_in:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 946
    iget-object v3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 947
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_start_button_fade_out:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 950
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 951
    new-instance v2, Landroidx/leanback/app/OnboardingSupportFragment$8;

    invoke-direct {v2, p0}, Landroidx/leanback/app/OnboardingSupportFragment$8;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 957
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_3
    :goto_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 960
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 961
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 962
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, p1}, Landroidx/leanback/app/OnboardingSupportFragment;->onPageChanged(II)V

    return-void
.end method

.method private resolveTheme()V
    .locals 5

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 544
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onProvideTheme()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 548
    sget v1, Landroidx/leanback/R$attr;->onboardingTheme:I

    .line 549
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 550
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_0

    .line 556
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected final getCurrentPageIndex()I
    .locals 0

    .line 830
    iget p0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    return p0
.end method

.method protected abstract getPageCount()I
.end method

.method protected abstract getPageDescription(I)Ljava/lang/CharSequence;
.end method

.method protected abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method

.method hideLogoView()V
    .locals 5

    .line 650
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 653
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 660
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 659
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/app/OnboardingSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 661
    sget v3, Landroidx/leanback/R$id;->background_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 663
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 665
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 666
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    :cond_1
    sget v3, Landroidx/leanback/R$id;->content_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 669
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 671
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 672
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 674
    :cond_2
    sget v3, Landroidx/leanback/R$id;->foreground_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 676
    invoke-virtual {p0, v2, v3}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 678
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 679
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 682
    :cond_3
    sget v2, Landroidx/leanback/R$id;->page_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    sget v2, Landroidx/leanback/R$id;->content_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 685
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/leanback/widget/PagingIndicator;->setPageCount(I)V

    .line 686
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget v3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {v0, v3, v1}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 688
    :cond_4
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_5

    .line 689
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 691
    :cond_5
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    :goto_0
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v1}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v1}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected moveToNextPage()V
    .locals 2

    .line 296
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 301
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 302
    invoke-direct {p0, v0}, Landroidx/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected moveToPreviousPage()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 287
    iput v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 288
    invoke-direct {p0, v0}, Landroidx/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected abstract onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onCreateDescriptionAnimator()Landroid/animation/Animator;
    .locals 1

    .line 777
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Landroidx/leanback/R$animator;->lb_onboarding_description_enter:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateEnterAnimation()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected abstract onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onCreateLogoAnimation()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCreateTitleAnimator()Landroid/animation/Animator;
    .locals 1

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Landroidx/leanback/R$animator;->lb_onboarding_title_enter:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 310
    invoke-direct {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->resolveTheme()V

    .line 311
    invoke-direct {p0, p1}, Landroidx/leanback/app/OnboardingSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 312
    sget p3, Landroidx/leanback/R$layout;->lb_onboarding_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 314
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mIsLtr:Z

    .line 316
    sget p2, Landroidx/leanback/R$id;->page_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/PagingIndicator;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    .line 317
    iget-object p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 319
    sget p2, Landroidx/leanback/R$id;->button_start:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    .line 320
    iget-object p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 322
    sget p2, Landroidx/leanback/R$id;->main_icon:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    .line 323
    sget p2, Landroidx/leanback/R$id;->logo:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    .line 324
    sget p2, Landroidx/leanback/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    .line 325
    sget p2, Landroidx/leanback/R$id;->description:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 327
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleViewTextColorSet:Z

    if-eqz p2, :cond_1

    .line 328
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    :cond_1
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColorSet:Z

    if-eqz p2, :cond_2

    .line 331
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    :cond_2
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDotBackgroundColorSet:Z

    if-eqz p2, :cond_3

    .line 334
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 336
    :cond_3
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mArrowColorSet:Z

    if-eqz p2, :cond_4

    .line 337
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 339
    :cond_4
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColorSet:Z

    if-eqz p2, :cond_5

    .line 340
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    iget p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    invoke-virtual {p2, p3}, Landroidx/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 342
    :cond_5
    iget-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButtonTextSet:Z

    if-eqz p2, :cond_6

    .line 343
    iget-object p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    check-cast p2, Landroid/widget/Button;

    iget-object p3, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 346
    sget p2, Landroidx/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    if-nez p2, :cond_7

    const/high16 p2, 0x42700000    # 60.0f

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 348
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p0, p2

    float-to-int p0, p0

    sput p0, Landroidx/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    .line 350
    :cond_7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    return-object p1
.end method

.method protected onFinishFragment()V
    .locals 0

    return-void
.end method

.method protected onLogoAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p0, v0}, Landroidx/leanback/app/OnboardingSupportFragment;->startEnterAnimation(Z)V

    return-void
.end method

.method protected onPageChanged(II)V
    .locals 0

    return-void
.end method

.method public onProvideTheme()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 392
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 393
    iget v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    const-string v1, "leanback.onboarding.current_page_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    iget-boolean v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    const-string v1, "leanback.onboarding.logo_animation_finished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    iget-boolean p0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    const-string v0, "leanback.onboarding.enter_animation_finished"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 356
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 358
    iput p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    .line 359
    iput-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    .line 360
    iput-boolean p2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    .line 361
    iget-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p2, p2}, Landroidx/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Landroidx/leanback/app/OnboardingSupportFragment$3;

    invoke-direct {p2, p0}, Landroidx/leanback/app/OnboardingSupportFragment$3;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "leanback.onboarding.current_page_index"

    .line 374
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    const-string p1, "leanback.onboarding.logo_animation_finished"

    .line 375
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    const-string p1, "leanback.onboarding.enter_animation_finished"

    .line 376
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    .line 377
    iget-boolean p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez p1, :cond_1

    .line 380
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->startLogoAnimation()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    .line 382
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected final startEnterAnimation(Z)V
    .locals 3

    .line 721
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->hideLogoView()V

    .line 726
    iget-boolean v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    return-void

    .line 729
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 730
    sget v1, Landroidx/leanback/R$animator;->lb_onboarding_page_indicator_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 732
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroidx/leanback/widget/PagingIndicator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 733
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateTitleAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 738
    iget-object v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 739
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_3
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateDescriptionAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 745
    iget-object v1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 746
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateEnterAnimation()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 752
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 759
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 760
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 761
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 762
    iget-object p1, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroidx/leanback/app/OnboardingSupportFragment$5;

    invoke-direct {v0, p0}, Landroidx/leanback/app/OnboardingSupportFragment$5;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method startLogoAnimation()Z
    .locals 7

    .line 597
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 602
    :cond_0
    iget v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 603
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    iget v4, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    sget v2, Landroidx/leanback/R$animator;->lb_onboarding_logo_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 607
    sget v4, Landroidx/leanback/R$animator;->lb_onboarding_logo_exit:I

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    const-wide/16 v5, 0x535

    .line 609
    invoke-virtual {v4, v5, v6}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 610
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v2, v6, v1

    aput-object v4, v6, v3

    .line 611
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 612
    iget-object v2, p0, Landroidx/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p0}, Landroidx/leanback/app/OnboardingSupportFragment;->onCreateLogoAnimation()Landroid/animation/Animator;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_2

    .line 618
    new-instance v1, Landroidx/leanback/app/OnboardingSupportFragment$4;

    invoke-direct {v1, p0, v0}, Landroidx/leanback/app/OnboardingSupportFragment$4;-><init>(Landroidx/leanback/app/OnboardingSupportFragment;Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    invoke-virtual {v5}, Landroid/animation/Animator;->start()V

    return v3

    :cond_2
    return v1
.end method
