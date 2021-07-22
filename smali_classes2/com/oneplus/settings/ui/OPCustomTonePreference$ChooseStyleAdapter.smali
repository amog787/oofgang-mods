.class Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPCustomTonePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChooseStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;Landroid/view/View;)V
    .locals 2

    .line 240
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iget v0, p3, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-eq v0, p1, :cond_5

    .line 241
    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$200(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    move-result-object p3

    iget-object p3, p3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    .line 243
    iget-object p3, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object p3, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_theme_mask_dark:I

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p3, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 247
    iget-object p3, p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_theme_mask_light:I

    invoke-virtual {p3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 250
    :goto_0
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iput p1, p3, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    .line 251
    invoke-static {p3, p2}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    move p2, v0

    .line 253
    :goto_1
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, 0x1

    if-ge p2, p3, :cond_2

    if-ne p1, p2, :cond_1

    .line 255
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    iput-boolean v1, p3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_2

    .line 257
    :cond_1
    iget-object p3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p3}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    iput-boolean v0, p3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 262
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    iget p2, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-nez p2, :cond_3

    .line 263
    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_img_tone_color1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_img_tone_color2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    if-ne p2, v1, :cond_4

    .line 266
    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_img_tone_light1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_img_tone_light2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 269
    :cond_4
    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_img_tone_dark1:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->op_img_tone_dark2:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :goto_3
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$300(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onBindViewHolder$0$OPCustomTonePreference$ChooseStyleAdapter(ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->lambda$onBindViewHolder$0(ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 200
    check-cast p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;I)V
    .locals 5

    .line 211
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    .line 212
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v1, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    iget v2, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->resId:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 214
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const/16 v4, 0x8

    if-ne v1, v3, :cond_1

    .line 217
    iget-boolean v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    .line 224
    iget-boolean v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5

    .line 231
    iget-boolean v0, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    if-eqz v0, :cond_4

    .line 232
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    sget v1, Lcom/android/settings/R$drawable;->op_theme_mask_dark:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-static {v0, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    goto :goto_0

    .line 236
    :cond_4
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageViewMask:Lcom/oneplus/settings/ui/RadiusImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    :cond_5
    :goto_0
    iget-object v0, p1, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;->imageView:Lcom/oneplus/settings/ui/RadiusImageView;

    new-instance v1, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomTonePreference$ChooseStyleAdapter$TQOysjhtGWTNfIFmxiFZJIZ53K4;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/settings/ui/-$$Lambda$OPCustomTonePreference$ChooseStyleAdapter$TQOysjhtGWTNfIFmxiFZJIZ53K4;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;ILcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->op_custom_tone_choose_item:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 206
    new-instance p2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    iget-object p0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;->this$0:Lcom/oneplus/settings/ui/OPCustomTonePreference;

    invoke-direct {p2, p0, p1}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Landroid/view/View;)V

    return-object p2
.end method
