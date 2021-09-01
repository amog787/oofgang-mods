.class public Lcom/android/settings/security/UnificationConfirmationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UnificationConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->startUnification()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x214

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/SecuritySettings;

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "compliant"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 56
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_title:I

    .line 57
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    .line 58
    sget p0, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_body:I

    goto :goto_0

    .line 59
    :cond_0
    sget p0, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_uncompliant_body:I

    .line 58
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v0, :cond_1

    .line 61
    sget p0, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_confirm:I

    goto :goto_1

    .line 63
    :cond_1
    sget p0, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_uncompliant_confirm:I

    :goto_1
    new-instance v0, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;

    invoke-direct {v0, p1}, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$X7Z3K6rE64nwQwG_nB1_LYi-p7Y;-><init>(Lcom/android/settings/security/SecuritySettings;)V

    .line 60
    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p0, Lcom/android/settings/R$string;->cancel:I

    const/4 p1, 0x0

    .line 65
    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p0}, Lcom/android/settings/security/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method
