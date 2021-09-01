.class public Lcom/android/settings/development/AdbWirelessDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "AdbWirelessDialog.java"

# interfaces
.implements Lcom/android/settings/development/AdbWirelessDialogUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/settings/development/AdbWirelessDialogController;

.field private final mListener:Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 87
    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialog;->mListener:Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;

    .line 88
    iput p3, p0, Lcom/android/settings/development/AdbWirelessDialog;->mMode:I

    return-void
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;I)Lcom/android/settings/development/AdbWirelessDialog;
    .locals 1

    .line 82
    new-instance v0, Lcom/android/settings/development/AdbWirelessDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/development/AdbWirelessDialog;-><init>(Landroid/content/Context;Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;I)V

    return-object v0
.end method


# virtual methods
.method public getController()Lcom/android/settings/development/AdbWirelessDialogController;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mController:Lcom/android/settings/development/AdbWirelessDialogController;

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mListener:Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;

    if-eqz p0, :cond_1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-interface {p0}, Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;->onCancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->adb_wireless_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mView:Landroid/view/View;

    .line 94
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 95
    new-instance v0, Lcom/android/settings/development/AdbWirelessDialogController;

    iget-object v1, p0, Lcom/android/settings/development/AdbWirelessDialog;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/development/AdbWirelessDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/development/AdbWirelessDialogController;-><init>(Lcom/android/settings/development/AdbWirelessDialogUiBase;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mController:Lcom/android/settings/development/AdbWirelessDialogController;

    .line 96
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 101
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 104
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialog;->mListener:Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;

    if-eqz p0, :cond_0

    .line 105
    invoke-interface {p0}, Lcom/android/settings/development/AdbWirelessDialog$AdbWirelessDialogListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    .line 155
    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 150
    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
