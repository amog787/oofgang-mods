.class public Lcom/google/android/setupdesign/items/DescriptionItem;
.super Lcom/google/android/setupdesign/items/Item;
.source "DescriptionItem.java"


# instance fields
.field private applyPartnerDescriptionStyle:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/setupdesign/items/Item;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/items/Item;->onBindView(Landroid/view/View;)V

    .line 58
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/setupdesign/items/DescriptionItem;->shouldApplyPartnerDescriptionStyle()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 60
    invoke-static {p1}, Lcom/google/android/setupdesign/util/DescriptionStyler;->applyPartnerCustomizationStyle(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public shouldApplyPartnerDescriptionStyle()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/android/setupdesign/items/DescriptionItem;->applyPartnerDescriptionStyle:Z

    return p0
.end method
