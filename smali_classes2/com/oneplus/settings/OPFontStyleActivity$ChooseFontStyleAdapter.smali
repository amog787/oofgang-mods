.class Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OPFontStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFontStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseFontStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleActivity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;Landroid/view/View;)V
    .locals 2

    .line 156
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    iget v0, p3, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    if-eq v0, p1, :cond_5

    .line 157
    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 158
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontMask:Landroid/widget/ImageView;

    if-eqz p3, :cond_0

    .line 159
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontMask:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    :cond_0
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 161
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 162
    :cond_1
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 163
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$100(Lcom/oneplus/settings/OPFontStyleActivity;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 166
    :cond_2
    iget-object p3, p2, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontMask:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    iget-object p3, p2, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 168
    iget-object p3, p2, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 170
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    iput p1, p3, Lcom/oneplus/settings/OPFontStyleActivity;->mSelectedIndex:I

    .line 171
    invoke-static {p3, p2}, Lcom/oneplus/settings/OPFontStyleActivity;->access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move p2, v0

    .line 173
    :goto_0
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_4

    if-ne p1, p2, :cond_3

    .line 175
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    iput-boolean v1, p3, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    goto :goto_1

    .line 177
    :cond_3
    iget-object p3, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p3}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    iput-boolean v0, p3, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 180
    :cond_4
    iget-object p2, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p2}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    iget p1, p1, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->fontType:I

    invoke-static {p2, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$202(Lcom/oneplus/settings/OPFontStyleActivity;I)I

    .line 181
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$300(Lcom/oneplus/settings/OPFontStyleActivity;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPFontStyleActivity$ChooseFontStyleAdapter(ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->lambda$onBindViewHolder$0(ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 125
    check-cast p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;I)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPFontStyleActivity;->access$000(Lcom/oneplus/settings/OPFontStyleActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;

    .line 140
    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->title:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 141
    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->content:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    iget-object v1, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-boolean v0, v0, Lcom/oneplus/settings/OPFontStyleActivity$ItemEntity;->selected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v0, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 147
    iget-object v0, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPFontStyleActivity;->access$102(Lcom/oneplus/settings/OPFontStyleActivity;Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontMask:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 152
    iget-object v0, p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 155
    :goto_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/settings/-$$Lambda$OPFontStyleActivity$ChooseFontStyleAdapter$2bQmhusvAh2JmeWOZtZJI1e1XK0;-><init>(Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;ILcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/oneplus/settings/OPFontStyleActivity$ChooseFontStyleAdapter;->this$0:Lcom/oneplus/settings/OPFontStyleActivity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/settings/R$layout;->op_font_style_choose_item:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 134
    new-instance p1, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
