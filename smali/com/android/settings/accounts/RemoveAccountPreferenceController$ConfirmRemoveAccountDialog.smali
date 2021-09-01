.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRemoveAccountDialog"
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Landroid/accounts/AccountManagerFuture;)V
    .locals 3

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 170
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v2, "booleanResult"

    .line 171
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, p1

    :catch_0
    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;->show(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "PrefControllerMixin"

    const-string p1, "Activity is no longer alive, skipping results"

    .line 165
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    .locals 3

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_0
    new-instance v0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    invoke-direct {v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;-><init>()V

    .line 125
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "account"

    .line 126
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "android.intent.extra.USER"

    .line 127
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 128
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 129
    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "confirmRemoveAccount"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x249

    return p0
.end method

.method public synthetic lambda$onClick$0$RemoveAccountPreferenceController$ConfirmRemoveAccountDialog(Landroid/accounts/AccountManagerFuture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->lambda$onClick$0(Landroid/accounts/AccountManagerFuture;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 161
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    new-instance v3, Lcom/android/settings/accounts/-$$Lambda$RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$3M6gahyDY_DPGCD5O_LLbQJ1vGw;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/-$$Lambda$RemoveAccountPreferenceController$ConfirmRemoveAccountDialog$3M6gahyDY_DPGCD5O_LLbQJ1vGw;-><init>(Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;)V

    iget-object v5, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->removeAccountAsUser(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;Landroid/os/UserHandle;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "account"

    .line 138
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mAccount:Landroid/accounts/Account;

    const-string v0, "android.intent.extra.USER"

    .line 139
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 145
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/android/settings/R$string;->really_remove_account_title:I

    .line 146
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->really_remove_account_message:I

    .line 147
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->remove_account_label:I

    .line 149
    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 150
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
