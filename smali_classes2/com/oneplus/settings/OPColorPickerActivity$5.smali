.class Lcom/oneplus/settings/OPColorPickerActivity$5;
.super Ljava/lang/Object;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 593
    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 597
    iget-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$700(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    sget p1, Lcom/android/settings/R$string;->op_custom_color_value_invalid:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible(Z)V

    .line 603
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$102(Lcom/oneplus/settings/OPColorPickerActivity;I)I

    const/4 v0, 0x1

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#FF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 606
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$002(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$800(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    .line 608
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->access$300(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)V

    .line 609
    iget-object p0, p0, Lcom/oneplus/settings/OPColorPickerActivity$5;->this$0:Lcom/oneplus/settings/OPColorPickerActivity;

    invoke-static {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroidx/appcompat/app/EditTextDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
