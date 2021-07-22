.class Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomShapePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/oneplus/settings/ui/OPCustomItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Landroid/view/View;)V
    .locals 2

    .line 211
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p4, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$302(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)I

    .line 213
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    iget p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    invoke-static {p4, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$400(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V

    .line 215
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    const/4 p4, 0x0

    if-eqz p2, :cond_2

    .line 216
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz p2, :cond_0

    .line 217
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz p2, :cond_1

    .line 219
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 220
    :cond_1
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 221
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p2

    iget-object p2, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 224
    :cond_2
    iget-object p2, p3, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    iget-object p2, p3, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 226
    iget-object p2, p3, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 228
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p2, p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move p2, p4

    .line 230
    :goto_0
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    .line 231
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    if-ne p1, p2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, p4

    :goto_1
    iput-boolean v1, p3, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomShapePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0(ILcom/oneplus/settings/ui/OPCustomItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 185
    check-cast p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;I)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    .line 198
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->resId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 200
    iget-boolean v1, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 203
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 204
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-static {v1, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    goto :goto_0

    .line 206
    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 208
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 210
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomShapePreference$ChooseStyleAdapter$z7P9eI1Y5QKVeB4mcsuHrEuqtF8;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomItemEntity;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomShapePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->op_custom_shape_choose_item:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 192
    new-instance p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
