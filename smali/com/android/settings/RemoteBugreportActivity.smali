.class public Lcom/android/settings/RemoteBugreportActivity;
.super Landroid/app/Activity;
.source "RemoteBugreportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.bugreport_notification_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 49
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->sharing_remote_bugreport_dialog_message:I

    .line 50
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$2;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 51
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v1, Lcom/android/settings/RemoteBugreportActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/RemoteBugreportActivity$1;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 57
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incorrect dialog type, no dialog shown. Received: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteBugreportActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 68
    :cond_2
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->share_remote_bugreport_dialog_title:I

    .line 69
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    if-ne p1, v0, :cond_3

    .line 72
    sget p1, Lcom/android/settings/R$string;->share_remote_bugreport_dialog_message:I

    goto :goto_1

    .line 73
    :cond_3
    sget p1, Lcom/android/settings/R$string;->share_remote_bugreport_dialog_message_finished:I

    .line 70
    :goto_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p1, Lcom/android/settings/RemoteBugreportActivity$5;

    invoke-direct {p1, p0}, Lcom/android/settings/RemoteBugreportActivity$5;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 74
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->decline_remote_bugreport_action:I

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$4;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 80
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->share_remote_bugreport_action:I

    new-instance v0, Lcom/android/settings/RemoteBugreportActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/RemoteBugreportActivity$3;-><init>(Lcom/android/settings/RemoteBugreportActivity;)V

    .line 91
    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_2
    return-void
.end method
