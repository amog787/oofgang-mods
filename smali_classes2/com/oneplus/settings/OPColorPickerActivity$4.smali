.class Lcom/oneplus/settings/OPColorPickerActivity$4;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPColorPickerActivity;->showColotEditDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPColorPickerActivity;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 572
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 573
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    if-nez p2, :cond_0

    .line 574
    iget-object p2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p2

    const-string p3, "#"

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 575
    iget-object p2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 577
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p2

    const/16 p3, 0x8

    if-ne p2, p3, :cond_1

    .line 578
    iget-object p2, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p2}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x7

    invoke-interface {p1, p3, p4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$4;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$600(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V

    :cond_1
    return-void
.end method
