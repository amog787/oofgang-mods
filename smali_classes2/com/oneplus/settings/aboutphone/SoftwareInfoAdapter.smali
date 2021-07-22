.class public Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SoftwareInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;,
        Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mOnItemClickListener:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 21
    check-cast p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->onBindViewHolder(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V
    .locals 3

    if-ltz p2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    .line 42
    iget-object v1, p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->tvSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v1, p1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getResIcon()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mOnItemClickListener:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$1;-><init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->op_aboute_phone_software_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance p2, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;-><init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;->mOnItemClickListener:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$OnItemClickListener;

    return-void
.end method
