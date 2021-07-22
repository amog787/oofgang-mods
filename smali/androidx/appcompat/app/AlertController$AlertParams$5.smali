.class Landroidx/appcompat/app/AlertController$AlertParams$5;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$dialog:Landroidx/appcompat/app/AlertController;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V
    .locals 0

    .line 1640
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams$5;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$5;->val$dialog:Landroidx/appcompat/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x1020014

    .line 1643
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    if-eqz p1, :cond_1

    .line 1645
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$5;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p2, p2, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz p2, :cond_0

    .line 1646
    aget-boolean p4, p2, p3

    xor-int/lit8 p4, p4, 0x1

    aput-boolean p4, p2, p3

    .line 1647
    aget-boolean p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 1649
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/app/AlertController$AlertParams$5;->this$0:Landroidx/appcompat/app/AlertController$AlertParams;

    iget-object p2, p2, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$AlertParams$5;->val$dialog:Landroidx/appcompat/app/AlertController;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 1650
    invoke-virtual {p1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result p1

    .line 1649
    invoke-interface {p2, p0, p3, p1}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    :cond_1
    return-void
.end method
