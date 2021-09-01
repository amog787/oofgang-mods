.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;
.super Ljava/lang/Object;
.source "LegacySuggestionContextualCardRenderer.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/ContextualCardRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;
    }
.end annotation


# static fields
.field public static final VIEW_TYPE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    sget v0, Lcom/android/settings/R$layout;->legacy_suggestion_tile:I

    sput v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    return-void
.end method

.method static synthetic lambda$bindView$0(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onPrimaryClick(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method

.method static synthetic lambda$bindView$1(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-interface {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCardController;->onDismissed(Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V
    .locals 2

    .line 54
    check-cast p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;

    .line 55
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mControllerRendererPool:Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCardType()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/homepage/contextualcards/ControllerRendererPool;->getController(Landroid/content/Context;I)Lcom/android/settings/homepage/contextualcards/ContextualCardController;

    move-result-object p0

    .line 57
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getSummaryText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$MDE2zT9pRUgspp8MT5mC_ZK8e1U;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p1, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;->closeButton:Landroid/view/View;

    new-instance v0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$S8SrB_Rrb0w7W3urNdtTiTVQvMI;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/-$$Lambda$LegacySuggestionContextualCardRenderer$S8SrB_Rrb0w7W3urNdtTiTVQvMI;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCardController;Lcom/android/settings/homepage/contextualcards/ContextualCard;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public createViewHolder(Landroid/view/View;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 49
    new-instance p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCardRenderer$LegacySuggestionViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
