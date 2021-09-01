.class Landroidx/appcompat/app/AlertController$AlertParams$1;
.super Landroid/widget/ArrayAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/AlertController$AlertParams;

.field final synthetic val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p6, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1451
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_9

    const p3, 0x1020014

    .line 1453
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckedTextView;

    .line 1454
    sget v0, Landroidx/appcompat/R$id;->singlechoice_subtitle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1456
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mSubItems:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, p1, :cond_0

    .line 1457
    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1459
    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 1461
    invoke-virtual {p3}, Landroid/widget/CheckedTextView;->getLineCount()I

    move-result v2

    .line 1462
    iget-object v3, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v3, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v3, :cond_9

    .line 1463
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_3

    if-gt v1, v5, :cond_1

    .line 1464
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v3, 0x32

    if-le v1, v3, :cond_3

    .line 1465
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_multiline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v2, v5, :cond_2

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1466
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_0
    add-int/2addr v1, v2

    .line 1465
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 1467
    invoke-virtual {p3, v4}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    .line 1468
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1469
    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1470
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v2, v5, :cond_4

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1471
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    add-int/2addr v1, v2

    .line 1470
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setHeight(I)V

    .line 1472
    invoke-virtual {p3, v4}, Landroid/widget/CheckedTextView;->setMaxLines(I)V

    .line 1473
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1474
    :cond_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1475
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    if-le v2, v5, :cond_6

    iget-object v2, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v2, v2, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1476
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_noline:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_2

    :cond_6
    move v2, v6

    :goto_2
    add-int/2addr v1, v2

    .line 1475
    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    const/16 v1, 0x8

    .line 1477
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1479
    :cond_7
    iget-object v1, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->oneplus_dialog_subtitle_minHeight_singleline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 1480
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1482
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1483
    iget-object v0, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_8

    .line 1484
    invoke-virtual {p3, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_4

    .line 1486
    :cond_8
    invoke-virtual {p3, v6}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1488
    :goto_4
    iget-object p3, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p3, p3, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_9

    .line 1489
    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams$1;->val$listView:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {p0, p1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_9
    return-object p2
.end method
