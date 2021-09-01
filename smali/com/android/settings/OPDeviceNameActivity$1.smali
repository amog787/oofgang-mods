.class Lcom/android/settings/OPDeviceNameActivity$1;
.super Ljava/lang/Object;
.source "OPDeviceNameActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OPDeviceNameActivity;->initDeviceName(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field private nameTemp:Ljava/lang/String;

.field num:I

.field final synthetic this$0:Lcom/android/settings/OPDeviceNameActivity;

.field final synthetic val$mDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/OPDeviceNameActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/settings/OPDeviceNameActivity$1;->this$0:Lcom/android/settings/OPDeviceNameActivity;

    iput-object p2, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->name:Ljava/lang/String;

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->num:I

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/OPDeviceNameActivity$1;->nameTemp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 188
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 189
    :goto_0
    iget-object p0, p0, Lcom/android/settings/OPDeviceNameActivity$1;->this$0:Lcom/android/settings/OPDeviceNameActivity;

    invoke-static {p0}, Lcom/android/settings/OPDeviceNameActivity;->access$000(Lcom/android/settings/OPDeviceNameActivity;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 166
    iget-object p1, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/android/settings/OPDeviceNameActivity$1;->val$mDeviceName:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/OPDeviceNameActivity$1;->nameTemp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
