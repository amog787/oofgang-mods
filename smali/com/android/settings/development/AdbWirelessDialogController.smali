.class public Lcom/android/settings/development/AdbWirelessDialogController;
.super Ljava/lang/Object;
.source "AdbWirelessDialogController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFailedMsg:Landroid/widget/TextView;

.field private mIpAddr:Landroid/widget/TextView;

.field private mMode:I

.field private mSixDigitCode:Landroid/widget/TextView;

.field private final mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/AdbWirelessDialogUiBase;Landroid/view/View;I)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    .line 51
    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    .line 52
    iput p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mMode:I

    .line 54
    invoke-interface {p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->pairing_code:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    .line 58
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget p3, Lcom/android/settings/R$id;->ip_addr:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    .line 60
    iget p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mMode:I

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    sget v0, Lcom/android/settings/R$string;->adb_pairing_device_dialog_failed_title:I

    invoke-interface {p2, v0}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(I)V

    .line 78
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_qrcode_pairing_failed:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    sget p3, Lcom/android/settings/R$string;->okay:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_1
    sget p2, Lcom/android/settings/R$string;->adb_pairing_device_dialog_failed_msg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    iget-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    sget v1, Lcom/android/settings/R$string;->adb_pairing_device_dialog_failed_title:I

    invoke-interface {v0, v1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->l_pairing_failed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->pairing_failed_label:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mFailedMsg:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    sget p3, Lcom/android/settings/R$string;->okay:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :cond_2
    sget p2, Lcom/android/settings/R$string;->adb_pairing_device_dialog_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    invoke-interface {v0, p2}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->l_pairing_six_digit:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object p2, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    sget v0, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mUi:Lcom/android/settings/development/AdbWirelessDialogUiBase;

    invoke-interface {p1, p3}, Lcom/android/settings/development/AdbWirelessDialogUiBase;->setCanceledOnTouchOutside(Z)V

    .line 84
    :goto_0
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->l_adbwirelessdialog:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public setIpAddr(Ljava/lang/String;)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mIpAddr:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPairingCode(Ljava/lang/String;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/development/AdbWirelessDialogController;->mSixDigitCode:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
