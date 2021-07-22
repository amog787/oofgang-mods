.class Lcom/android/settings/vpn2/AppDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "AppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppDialog$Listener;
    }
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mListener:Lcom/android/settings/vpn2/AppDialog$Listener;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/android/settings/vpn2/AppDialog;->mListener:Lcom/android/settings/vpn2/AppDialog$Listener;

    .line 48
    iput-object p3, p0, Lcom/android/settings/vpn2/AppDialog;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 49
    iput-object p4, p0, Lcom/android/settings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createButtons()V
    .locals 3

    .line 66
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    sget v1, Lcom/android/settings/R$string;->vpn_forget:I

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    .line 69
    invoke-virtual {p0, v2, v1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 73
    sget v1, Lcom/android/settings/R$string;->vpn_done:I

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 73
    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 80
    iget-object p2, p0, Lcom/android/settings/vpn2/AppDialog;->mListener:Lcom/android/settings/vpn2/AppDialog$Listener;

    invoke-interface {p2, p1}, Lcom/android/settings/vpn2/AppDialog$Listener;->onForget(Landroid/content/DialogInterface;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 58
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialog;->mLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->vpn_version:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppDialog;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialog;->createButtons()V

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
