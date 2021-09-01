.class final Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;
.super Landroid/widget/BaseAdapter;
.source "PaletteListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/PaletteListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayAdapter"
.end annotation


# instance fields
.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/accessibility/PaletteListView;


# direct methods
.method private constructor <init>(Lcom/android/settings/accessibility/PaletteListView;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->this$0:Lcom/android/settings/accessibility/PaletteListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accessibility/PaletteListView;Lcom/android/settings/accessibility/PaletteListView$1;)V
    .locals 0

    .line 227
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;-><init>(Lcom/android/settings/accessibility/PaletteListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->mColorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->mColorList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 249
    iget-object p3, p0, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->mColorList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;

    .line 250
    invoke-virtual {p1}, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->getColorName()Ljava/lang/String;

    move-result-object p3

    .line 251
    invoke-virtual {p1}, Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;->getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    if-nez p2, :cond_0

    .line 254
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->this$0:Lcom/android/settings/accessibility/PaletteListView;

    invoke-static {p0}, Lcom/android/settings/accessibility/PaletteListView;->access$100(Lcom/android/settings/accessibility/PaletteListView;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->palette_listview_item:I

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 255
    new-instance p0, Lcom/android/settings/accessibility/PaletteListView$ViewHolder;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/PaletteListView$ViewHolder;-><init>(Lcom/android/settings/accessibility/PaletteListView$1;)V

    .line 256
    sget v0, Lcom/android/settings/R$id;->item_textview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessibility/PaletteListView$ViewHolder;->textView:Landroid/widget/TextView;

    .line 257
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/accessibility/PaletteListView$ViewHolder;

    .line 262
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/PaletteListView$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object p0, p0, Lcom/android/settings/accessibility/PaletteListView$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method protected setColorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/PaletteListView$ColorAttributes;",
            ">;)V"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/android/settings/accessibility/PaletteListView$DisplayAdapter;->mColorList:Ljava/util/List;

    return-void
.end method
