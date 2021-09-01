.class public Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestErrorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;
    }
.end annotation


# instance fields
.field private mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->onRescanClick()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void
.end method

.method public static newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;-><init>()V

    return-object v0
.end method

.method private rejectNetworkRequestAndFinish()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55d

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$NetworkRequestErrorDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$NetworkRequestErrorDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$NetworkRequestErrorDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->lambda$onCreateDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 50
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 58
    sget-object p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->TIME_OUT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "DIALOG_ERROR_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    .line 63
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v1, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->TIME_OUT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    if-ne p1, v1, :cond_1

    .line 65
    sget p1, Lcom/android/settings/R$string;->network_connection_timeout_dialog_message:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->network_connection_timeout_dialog_ok:I

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$7_Krzx6JGM4tH4YA-fKluuB7V0Y;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$7_Krzx6JGM4tH4YA-fKluuB7V0Y;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 66
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$yqnVunFMc2vfWDswc1vtYoaBvEY;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$yqnVunFMc2vfWDswc1vtYoaBvEY;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 68
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 71
    :cond_1
    sget p1, Lcom/android/settings/R$string;->network_connection_errorstate_dialog_message:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->okay:I

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$Ktwt2L5d1Hs-XIiQ1FheTk_6zL0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestErrorDialogFragment$Ktwt2L5d1Hs-XIiQ1FheTk_6zL0;-><init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;)V

    .line 72
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    :goto_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method protected onRescanClick()V
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->onClickRescanButton()V

    :cond_0
    return-void
.end method

.method public setRejectCallback(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->mRejectCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method
