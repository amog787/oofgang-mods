.class public Landroidx/appcompat/app/EditTextDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "EditTextDialog.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/appcompat/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 36
    sget v0, Landroidx/appcompat/R$id;->edit_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroidx/appcompat/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    .line 38
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method initView(Landroid/view/View;)V
    .locals 1

    .line 31
    sget v0, Landroidx/appcompat/R$id;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Landroidx/appcompat/app/EditTextDialog;->mEditText:Landroid/widget/EditText;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "OPEditTextDialog"

    const-string v1, "onCreate"

    .line 22
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    sget v1, Landroidx/appcompat/R$layout;->oneplus_control_alert_dialog_with_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/EditTextDialog;->initView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
