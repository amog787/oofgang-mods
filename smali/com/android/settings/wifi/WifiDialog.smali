.class public Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# instance fields
.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 92
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    .line 93
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 94
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 95
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    return-void
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 8

    .line 75
    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v7
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;II)Lcom/android/settings/wifi/WifiDialog;
    .locals 8

    .line 85
    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v7
.end method

.method private synthetic lambda$onStart$0(Landroid/view/View;)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-nez p1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->ssid:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object p0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 191
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onStart$0$WifiDialog(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDialog;->lambda$onStart$0(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz p1, :cond_3

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 174
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 175
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 174
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings/wifi/WifiDialog;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 105
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->wifi_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 106
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 107
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 108
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 110
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hideSubmitButton()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 118
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p1, :cond_1

    .line 119
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->hideForgetButton()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 153
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 154
    iget-object p0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    sget v1, Lcom/android/settings/R$id;->ssid_scanner_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 130
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    .line 131
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 135
    :cond_1
    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$WifiDialog$A0XFUDDETwsfRxrVaOXME4wrgzI;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiDialog$A0XFUDDETwsfRxrVaOXME4wrgzI;-><init>(Lcom/android/settings/wifi/WifiDialog;)V

    if-eqz v0, :cond_2

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    .line 216
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    .line 211
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 206
    invoke-virtual {p0, v0, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
