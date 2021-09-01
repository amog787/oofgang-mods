.class public Lcom/google/android/setupdesign/items/RecyclerItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerItemAdapter.java"

# interfaces
.implements Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;,
        Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/setupdesign/items/ItemViewHolder;",
        ">;",
        "Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;"
    }
.end annotation


# instance fields
.field public final applyPartnerHeavyThemeResource:Z

.field private final itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

.field private listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/items/ItemHierarchy;Z)V
    .locals 0

    .line 70
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 71
    iput-boolean p2, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->applyPartnerHeavyThemeResource:Z

    .line 72
    iput-object p1, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    .line 73
    invoke-interface {p1, p0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->registerObserver(Lcom/google/android/setupdesign/items/ItemHierarchy$Observer;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;)Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->listener:Lcom/google/android/setupdesign/items/RecyclerItemAdapter$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public getItem(I)Lcom/google/android/setupdesign/items/IItem;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {p0, p1}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getItemAt(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p0

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->itemHierarchy:Lcom/google/android/setupdesign/items/ItemHierarchy;

    invoke-interface {p0}, Lcom/google/android/setupdesign/items/ItemHierarchy;->getCount()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p0

    .line 88
    instance-of p1, p0, Lcom/google/android/setupdesign/items/AbstractItem;

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 89
    check-cast p0, Lcom/google/android/setupdesign/items/AbstractItem;

    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/AbstractItemHierarchy;->getId()I

    move-result p0

    if-lez p0, :cond_0

    int-to-long v0, p0

    :cond_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p0

    .line 176
    invoke-interface {p0}, Lcom/google/android/setupdesign/items/IItem;->getLayoutResource()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->onBindViewHolder(Lcom/google/android/setupdesign/items/ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/setupdesign/items/ItemViewHolder;I)V
    .locals 0

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->getItem(I)Lcom/google/android/setupdesign/items/IItem;

    move-result-object p0

    .line 166
    invoke-interface {p0}, Lcom/google/android/setupdesign/items/IItem;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/setupdesign/items/ItemViewHolder;->setEnabled(Z)V

    .line 167
    invoke-virtual {p1, p0}, Lcom/google/android/setupdesign/items/ItemViewHolder;->setItem(Lcom/google/android/setupdesign/items/IItem;)V

    .line 168
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p0, p1}, Lcom/google/android/setupdesign/items/IItem;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/setupdesign/items/ItemViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/setupdesign/items/ItemViewHolder;
    .locals 6

    .line 103
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 104
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v0, Lcom/google/android/setupdesign/items/ItemViewHolder;

    invoke-direct {v0, p2}, Lcom/google/android/setupdesign/items/ItemViewHolder;-><init>(Landroid/view/View;)V

    .line 108
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "noBackground"

    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 111
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 112
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter_android_selectableItemBackground:I

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 116
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter_selectableItemBackground:I

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    .line 121
    iget-boolean v3, p0, Lcom/google/android/setupdesign/items/RecyclerItemAdapter;->applyPartnerHeavyThemeResource:Z

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    move-result-object v3

    .line 124
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getColor(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)I

    move-result v3

    .line 125
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v3, v4

    goto :goto_0

    .line 127
    :cond_1
    sget v3, Lcom/google/android/setupdesign/R$styleable;->SudRecyclerItemAdapter_android_colorBackground:I

    .line 128
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_2
    :goto_0
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    .line 143
    new-instance v1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;

    invoke-direct {v1, v4}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 134
    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot resolve required attributes. selectableItemBackground="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " background="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerItemAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    :cond_5
    new-instance p1, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;

    invoke-direct {p1, p0, v0}, Lcom/google/android/setupdesign/items/RecyclerItemAdapter$1;-><init>(Lcom/google/android/setupdesign/items/RecyclerItemAdapter;Lcom/google/android/setupdesign/items/ItemViewHolder;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onItemRangeChanged(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .locals 0

    .line 186
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(Lcom/google/android/setupdesign/items/ItemHierarchy;II)V
    .locals 0

    .line 191
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method
