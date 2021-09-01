.class public Lcom/android/settings/panel/PanelFragment;
.super Landroidx/fragment/app/Fragment;
.source "PanelFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

.field private mDoneButton:Landroid/widget/TextView;

.field private mFooterDivider:Landroid/view/View;

.field private mHeaderSubtitle:Landroid/widget/TextView;

.field private mHeaderTitle:Landroid/widget/TextView;

.field mLayoutView:Landroid/view/View;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mMaxHeight:I

.field private mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPanel:Lcom/android/settings/panel/PanelContent;

.field private mPanelClosedKey:Ljava/lang/String;

.field private mPanelHeader:Landroid/widget/LinearLayout;

.field private final mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

.field mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSeeMoreButton:Landroid/widget/TextView;

.field private final mSliceLiveData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 103
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    .line 108
    sget-object v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$rdpxKzRnU-EXEAOP00WJYU-0ZKA;->INSTANCE:Lcom/android/settings/panel/-$$Lambda$PanelFragment$rdpxKzRnU-EXEAOP00WJYU-0ZKA;

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 112
    new-instance v0, Lcom/android/settings/panel/PanelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 124
    new-instance v0, Lcom/android/settings/panel/PanelFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/panel/PanelFragment;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->animateIn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings/panel/PanelFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/panel/PanelFragment;)Lcom/android/settings/panel/PanelContent;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/panel/PanelFragment;)Landroid/widget/TextView;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    return-object p0
.end method

.method private animateIn()V
    .locals 7

    .line 377
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->panel_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    .line 379
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xfa

    .line 378
    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 382
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 383
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 384
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 387
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;
    .locals 5

    .line 399
    sget v0, Lcom/android/settings/R$id;->panel_container:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 400
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p5

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 402
    new-instance p5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p5, 0x2

    new-array v1, p5, [Landroid/animation/Animator;

    .line 403
    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, p5, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    .line 404
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v4

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, p5, [F

    aput p3, p5, v4

    aput p4, p5, p1

    .line 405
    invoke-static {p0, p2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, p1

    .line 403
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private createPanelContent()V
    .locals 11

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    .line 182
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->panel_parent_layout:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->see_more:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->done:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/TextView;

    .line 188
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->panel_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    .line 189
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->panel_header:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    .line 190
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->title_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    .line 191
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->header_title:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->header_subtitle:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    .line 193
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->footer_divider:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mFooterDivider:Landroid/view/View;

    .line 197
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "PANEL_CALLING_PACKAGE_NAME"

    .line 201
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 203
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Lcom/android/settings/overlay/FeatureFactory;->getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;

    move-result-object v4

    .line 205
    invoke-interface {v4, v0, v1}, Lcom/android/settings/panel/PanelFeatureProvider;->getPanel(Landroid/content/Context;Landroid/os/Bundle;)Lcom/android/settings/panel/PanelContent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    if-nez v1, :cond_1

    .line 208
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    new-instance v4, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;

    invoke-direct {v4, p0}, Lcom/android/settings/panel/PanelFragment$LocalPanelCallback;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-interface {v1, v4}, Lcom/android/settings/panel/PanelContent;->registerCallback(Lcom/android/settings/panel/PanelContentCallback;)V

    .line 212
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    instance-of v1, v1, Landroidx/lifecycle/LifecycleObserver;

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    check-cast v4, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 216
    :cond_2
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 218
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadAllSlices()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 228
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 232
    :cond_3
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mHeaderSubtitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v1}, Lcom/android/settings/panel/PanelContent;->getSubTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getHeaderIconIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 239
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getHeaderIconListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 243
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->output_switcher_panel_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mTitleIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 250
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mFooterDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 252
    :cond_5
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mFooterDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getSeeMoreListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mDoneButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getCloseListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getCustomizedButtonTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 260
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 261
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 263
    :cond_6
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 266
    :cond_7
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_8

    .line 268
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSeeMoreButton:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :cond_8
    :goto_2
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    .line 275
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v8

    const/4 v10, 0x0

    .line 272
    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$getCloseListener$5(Landroid/view/View;)V
    .locals 0

    const-string p1, "done"

    .line 444
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$getHeaderIconListener$6(Landroid/view/View;)V
    .locals 0

    .line 452
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 453
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getHeaderIconIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$getSeeMoreListener$4(Landroid/view/View;)V
    .locals 1

    const-string p1, "see_more"

    .line 430
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    .line 431
    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p1}, Lcom/android/settings/panel/PanelContent;->isCustomizedButtonUsed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 432
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->onClickCustomizedButton()V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 435
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getSeeMoreIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 436
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$loadAllSlices$1(Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->removeSliceLiveData(Landroid/net/Uri;)V

    .line 289
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$2(Landroid/net/Uri;)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method private synthetic lambda$loadAllSlices$3(Landroid/net/Uri;Landroidx/slice/Slice;)V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isSliceLoaded(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 317
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isErrorSlice()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 321
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    goto :goto_1

    .line 323
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 324
    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$68iLbW2RqT-9FL47AbuyGF_gb58;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 318
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->removeSliceLiveData(Landroid/net/Uri;)V

    .line 319
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->markSliceLoaded(Landroid/net/Uri;)V

    .line 330
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->loadPanelWhenReady()V

    return-void
.end method

.method static synthetic lambda$new$0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private loadAllSlices()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {v0}, Lcom/android/settings/panel/PanelContent;->getSlices()Ljava/util/List;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    .line 285
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$uDVUYDPBeDRTbj_G_7viH7-rl6o;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    invoke-static {v2, v1, v3}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;Landroidx/slice/widget/SliceLiveData$OnErrorListener;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 293
    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;

    invoke-direct {v4, p0, v1}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$733KKi6x5qZdxlsFpx2EjWDfK7c;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadPanelWhenReady()V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlicesLoaderCountdownLatch:Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;

    invoke-virtual {v0}, Lcom/android/settings/panel/PanelSlicesLoaderCountdownLatch;->isPanelReadyToLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    .line 354
    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/panel/PanelSlicesAdapter;-><init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/Map;I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mAdapter:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 355
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 357
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 358
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelSlices:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private removeSliceLiveData(Landroid/net/Uri;)V
    .locals 2

    .line 337
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->config_panel_keep_observe_uri:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 339
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mSliceLiveData:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method getCloseListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 443
    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$wA18xnPrODGA3u1MDrl3uC5dUzY;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$wA18xnPrODGA3u1MDrl3uC5dUzY;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getHeaderIconListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 451
    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$N3DMhbGuDEaImQpPovL7Ug2k3kc;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$N3DMhbGuDEaImQpPovL7Ug2k3kc;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method getPanelViewType()I
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    invoke-interface {p0}, Lcom/android/settings/panel/PanelContent;->getViewType()I

    move-result p0

    return p0
.end method

.method getSeeMoreListener()Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 429
    new-instance v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$qzrDgY7NYIpIoF6xu9DUs5CSAm4;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$qzrDgY7NYIpIoF6xu9DUs5CSAm4;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    return-object v0
.end method

.method public synthetic lambda$getCloseListener$5$PanelFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getCloseListener$5(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getHeaderIconListener$6$PanelFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getHeaderIconListener$6(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$getSeeMoreListener$4$PanelFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$getSeeMoreListener$4(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$loadAllSlices$1$PanelFragment(Landroid/net/Uri;ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$1(Landroid/net/Uri;ILjava/lang/Throwable;)V

    return-void
.end method

.method public synthetic lambda$loadAllSlices$2$PanelFragment(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$2(Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$loadAllSlices$3$PanelFragment(Landroid/net/Uri;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$3(Landroid/net/Uri;Landroidx/slice/Slice;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 141
    sget p3, Lcom/android/settings/R$layout;->panel_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$dimen;->output_switcher_slice_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/panel/PanelFragment;->mMaxHeight:I

    .line 145
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->createPanelContent()V

    .line 146
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroyView()V
    .locals 8

    .line 411
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 413
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "others"

    .line 414
    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mPanelLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/android/settings/panel/PanelFragment;->mMetricsProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mPanel:Lcom/android/settings/panel/PanelContent;

    .line 422
    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/panel/PanelFragment;->mPanelClosedKey:Ljava/lang/String;

    const/4 v7, 0x0

    .line 419
    invoke-virtual/range {v2 .. v7}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    return-void
.end method

.method updatePanelWithAnimation()V
    .locals 7

    .line 158
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->panel_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->mLayoutView:Landroid/view/View;

    .line 160
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0xc8

    .line 159
    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->buildAnimatorSet(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 165
    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 167
    new-instance v1, Lcom/android/settings/panel/PanelFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/PanelFragment$3;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 173
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
