.class public Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "ContextualCardsDiffCallback.java"


# instance fields
.field private final mNewCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    .line 62
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getCategory()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 63
    invoke-virtual {p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->hasInlineAction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    .line 53
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/contextualcards/ContextualCard;

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/ContextualCard;->getName()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getNewListSize()I
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mNewCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getOldListSize()I
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardsDiffCallback;->mOldCards:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
