.class Landroidx/appcompat/app/AlertController$AlertParams$3;
.super Landroidx/appcompat/app/AlertController$CheckedItemAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    .line 1545
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 1549
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_10

    const p3, 0x1020014

    .line 1551
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_a

    .line 1552
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 1553
    sget v0, Landroidx/appcompat/R$id;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1555
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mSubItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v5, p1, :cond_0

    .line 1556
    aget-object v4, v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 1559
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getLineCount()I

    move-result v5

    .line 1560
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_3

    if-gt v4, v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v6, 0x32

    if-le v4, v6, :cond_3

    .line 1561
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_multiline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v5, v2, :cond_2

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1562
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    add-int/2addr v1, v4

    .line 1561
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 1563
    invoke-virtual {p3, v7}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    .line 1564
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1565
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1566
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v5, v2, :cond_4

    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1567
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    add-int/2addr v1, v4

    .line 1566
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 1568
    invoke-virtual {p3, v7}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    .line 1569
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1570
    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1571
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    if-le v5, v2, :cond_6

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v5, v5, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1572
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_2
    add-int/2addr v4, v5

    .line 1571
    invoke-virtual {p3, v4}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 1573
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1576
    :cond_7
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 1577
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1580
    :cond_8
    :goto_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    if-ne p1, v0, :cond_9

    .line 1581
    invoke-virtual {p3, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_4

    .line 1583
    :cond_9
    invoke-virtual {p3, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1585
    :goto_4
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_6

    .line 1587
    :cond_a
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 1588
    sget v0, Landroidx/appcompat/R$id;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_f

    .line 1590
    iget-object v4, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v4, v4, Landroidx/appcompat/app/AlertController$AlertParams;->mSubItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_b

    array-length v5, v4

    if-le v5, p1, :cond_b

    .line 1591
    aget-object p1, v4, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1593
    :cond_b
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    .line 1594
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    if-le p1, v2, :cond_c

    .line 1595
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_multiline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1596
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 1597
    :cond_c
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 1598
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1599
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 1600
    :cond_d
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1601
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1602
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 1604
    :cond_e
    iget-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$3;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p1, p1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1605
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1608
    :cond_f
    :goto_5
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_10
    :goto_6
    return-object p2
.end method
