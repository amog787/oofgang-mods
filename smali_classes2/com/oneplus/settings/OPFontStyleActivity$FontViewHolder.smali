.class Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OPFontStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFontStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FontViewHolder"
.end annotation


# instance fields
.field fontFlag:Landroid/widget/TextView;

.field fontMask:Landroid/widget/ImageView;

.field fontTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 201
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 202
    sget v0, Lcom/android/settings/R$id;->font_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontTitle:Landroid/widget/TextView;

    .line 203
    sget v0, Lcom/android/settings/R$id;->font_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontMask:Landroid/widget/ImageView;

    .line 204
    sget v0, Lcom/android/settings/R$id;->font_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;->fontFlag:Landroid/widget/TextView;

    return-void
.end method
