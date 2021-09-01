.class Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SliceHalfCardRendererHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HalfCardViewHolder"
.end annotation


# instance fields
.field public final content:Landroid/widget/LinearLayout;

.field public final icon:Landroid/widget/ImageView;

.field public final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 86
    sget v0, Lcom/android/settings/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->content:Landroid/widget/LinearLayout;

    const v0, 0x1020006

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x1020016

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/SliceHalfCardRendererHelper$HalfCardViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method
