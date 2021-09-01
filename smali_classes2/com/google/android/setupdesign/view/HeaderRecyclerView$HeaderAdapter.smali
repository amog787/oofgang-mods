.class public Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CVH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TCVH;>;"
        }
    .end annotation
.end field

.field private header:Landroid/view/View;

.field private final observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TCVH;>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;-><init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->observer:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 117
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 118
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 119
    iget-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 176
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemId(I)J
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const-wide p0, 0x7fffffffffffffffL

    return-wide p0

    .line 190
    :cond_1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    const p0, 0x7fffffff

    return p0

    .line 170
    :cond_1
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "TCVH;>;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 148
    :cond_0
    instance-of v0, p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderViewHolder;

    if-eqz v0, :cond_3

    .line 149
    iget-object p2, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 153
    iget-object p2, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 156
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HeaderViewHolder cannot find mHeader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 158
    :cond_3
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    .line 130
    new-instance p0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 134
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    new-instance p1, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderViewHolder;

    invoke-direct {p1, p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 137
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setHeader(Landroid/view/View;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->header:Landroid/view/View;

    return-void
.end method
