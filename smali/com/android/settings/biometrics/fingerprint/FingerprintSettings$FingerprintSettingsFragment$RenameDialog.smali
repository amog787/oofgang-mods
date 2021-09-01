.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDialog"
.end annotation


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mDeleteInProgress:Z

.field private mDialogTextField:Landroid/widget/ImeAwareEditText;

.field private mFp:Landroid/hardware/fingerprint/Fingerprint;

.field private mTextHadFocus:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 882
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Z
    .locals 0

    .line 882
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDeleteInProgress:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/ImeAwareEditText;
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/ImeAwareEditText;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/ImeAwareEditText;)Landroid/widget/ImeAwareEditText;
    .locals 0

    .line 882
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/ImeAwareEditText;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method


# virtual methods
.method public enableDelete()V
    .locals 1

    const/4 v0, 0x0

    .line 1013
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDeleteInProgress:Z

    .line 1014
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    const/4 v0, -0x2

    .line 1015
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23a

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 898
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string v2, "fingerName"

    .line 903
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "startSelection"

    .line 904
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "endSelection"

    .line 905
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move p1, v1

    move v1, v3

    goto :goto_0

    :cond_0
    move-object v2, v0

    move p1, v1

    .line 912
    :goto_0
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/settings/R$layout;->fingerprint_rename_dialog:I

    .line 914
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_dialog_name_label:I

    .line 916
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$string;->cancel:I

    new-instance v5, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;

    invoke-direct {v5, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V

    .line 917
    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v4, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_dialog_ok:I

    .line 925
    invoke-virtual {v3, v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 955
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 956
    new-instance v3, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Ljava/lang/String;II)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1004
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1006
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1009
    :cond_2
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1021
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->hasFocus()Z

    move-result v0

    const-string v1, "textHadFocus"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {v0}, Landroid/widget/ImeAwareEditText;->getSelectionStart()I

    move-result v0

    const-string v1, "startSelection"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1026
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/ImeAwareEditText;

    invoke-virtual {p0}, Landroid/widget/ImeAwareEditText;->getSelectionEnd()I

    move-result p0

    const-string v0, "endSelection"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setDeleteInProgress(Z)V
    .locals 0

    .line 893
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDeleteInProgress:Z

    return-void
.end method
