.class Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OPCustomNotificationAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Lcom/oneplus/settings/ui/OPCustomItemEntity;Landroid/view/View;)V
    .locals 2

    .line 451
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$700(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V

    .line 453
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 454
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz p4, :cond_0

    .line 455
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 456
    :cond_0
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    if-eqz p4, :cond_1

    .line 457
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 458
    :cond_1
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    if-eqz p4, :cond_2

    .line 459
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$600(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p4

    iget-object p4, p4, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 461
    :cond_2
    iget-object p4, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    iget-object p4, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 463
    iget-object p4, p2, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 465
    iget-object p4, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p4, p2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$602(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    .line 467
    iget-object p2, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    iget p3, p3, Lcom/oneplus/settings/ui/OPCustomItemEntity;->index:I

    invoke-static {p2, p3}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$800(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)V

    .line 468
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$902(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;I)I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$500(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomNotificationAnimVideoPreference$AnimStyleAdapter(ILcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Lcom/oneplus/settings/ui/OPCustomItemEntity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->lambda$onBindViewHolder$0(ILcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Lcom/oneplus/settings/ui/OPCustomItemEntity;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 424
    check-cast p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;I)V
    .locals 4

    .line 435
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$500(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;

    .line 436
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->resId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 437
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-boolean v1, v0, Lcom/oneplus/settings/ui/OPCustomItemEntity;->selected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 442
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 443
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {v1, p1}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$602(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    goto :goto_0

    .line 445
    :cond_0
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 446
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 447
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 450
    :goto_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$AnimStyleAdapter$cr511MMFNCSomdwqRteceQ4v0Ww;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomNotificationAnimVideoPreference$AnimStyleAdapter$cr511MMFNCSomdwqRteceQ4v0Ww;-><init>(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;ILcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;Lcom/oneplus/settings/ui/OPCustomItemEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;->access$400(Lcom/oneplus/settings/ui/OPCustomNotificationAnimVideoPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->op_custom_clock_choose_item:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 430
    new-instance p1, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/ui/OPCustomItemEntityViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
