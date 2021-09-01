.class public Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;
.super Ljava/lang/Object;
.source "ConditionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE_FULL_WIDTH:I

.field public static final VIEW_TYPE_HALF_WIDTH:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget v0, Lcom/android/settings/R$layout;->conditional_card_half_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_HALF_WIDTH:I

    .line 49
    sget v0, Lcom/android/settings/R$layout;->conditional_card_full_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->VIEW_TYPE_FULL_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method private initializeActionButton(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 3

    .line 109
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getActionText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 112
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->first_action:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$pwAlpuPuZxYifx7itzC3y45MNfA;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$pwAlpuPuZxYifx7itzC3y45MNfA;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 128
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initializePrimaryClick(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 81
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/settings/homepage/contextualcards/conditional/-$$Lambda$ConditionContextualCardRenderer$mYIJR6MT82XJp0d3MUEsLTgalG0;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeView(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V
    .locals 3

    .line 93
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    sget v1, Lcom/android/settings/R$drawable;->op_ic_homepage_common_card_round_icon:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 96
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 100
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->oneplus_accent_color:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {v1, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 101
    sget p0, Lcom/android/settings/R$id;->icon_view:I

    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 102
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p0, p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSummaryText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$initializeActionButton$1(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 2

    .line 120
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 123
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v0

    const/16 v1, 0x178

    .line 121
    invoke-virtual {p1, p3, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getCardType()I

    move-result p3

    invoke-virtual {p1, p0, p3}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    .line 125
    invoke-interface {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onActionClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method private synthetic lambda$initializePrimaryClick$0(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p3, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v0

    const/16 v1, 0x177

    .line 83
    invoke-virtual {p1, p3, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 86
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getCardType()I

    move-result p3

    .line 86
    invoke-virtual {p1, p0, p3}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    .line 87
    invoke-interface {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 5

    .line 67
    check-cast p1, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    .line 68
    check-cast p2, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;

    .line 69
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;->getMetricsConstant()I

    move-result v2

    const/16 v3, 0x5de

    const/4 v4, 0x0

    .line 72
    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;III)V

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializePrimaryClick(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializeView(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;)V

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->initializeActionButton(Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 62
    new-instance p0, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer$ConditionalCardHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public synthetic lambda$initializeActionButton$1$ConditionContextualCardRenderer(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->lambda$initializeActionButton$1(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initializePrimaryClick$0$ConditionContextualCardRenderer(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/homepage/contextualcards/conditional/ConditionContextualCardRenderer;->lambda$initializePrimaryClick$0(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/homepage/contextualcards/conditional/ConditionalContextualCard;Landroid/view/View;)V

    return-void
.end method
