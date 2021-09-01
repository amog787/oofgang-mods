.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private isDeleteDialogShow:Z

.field private isRenameDialogShow:Z

.field private isWarnDialogShow:Z

.field private mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

.field private mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Landroidx/appcompat/app/AlertDialog;

.field private mUserId:I

.field private mWarnDialog:Landroidx/appcompat/app/AlertDialog;

.field private renameData:Ljava/lang/String;

.field private renameEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    .line 249
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$2;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroid/widget/EditText;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Ljava/lang/CharSequence;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;ILjava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameFingerPrint(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p0
.end method

.method private deleteFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private initViews()V
    .locals 1

    const-string v0, "key_opfinger_edit"

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    const-string v0, "opfingerprint_rename"

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    const-string v0, "opfingerprint_delete"

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 212
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mOPFingerPrintEditViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setFingerprintName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private renameFingerPrint(ILjava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    invoke-virtual {v0, p1, p0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->rename(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 359
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "renamedialog"

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isRenameDialogShow:Z

    const-string v0, "deletedialog"

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isDeleteDialogShow:Z

    const-string v0, "warndialog"

    .line 157
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isWarnDialogShow:Z

    const-string v0, "renamedata"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameData:Ljava/lang/String;

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mUserId:I

    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint_parcelable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz p1, :cond_1

    const-string v0, "fingerprint_name"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    .line 174
    :cond_2
    :goto_0
    new-instance p1, Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mProgressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fingerprint"

    .line 176
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 177
    sget p1, Lcom/android/settings/R$xml;->op_fingerprint_edit:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 178
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->initViews()V

    .line 179
    iget-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isRenameDialogShow:Z

    if-eqz p1, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V

    goto :goto_1

    .line 181
    :cond_3
    iget-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isWarnDialogShow:Z

    if-eqz p1, :cond_4

    .line 182
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1

    .line 183
    :cond_4
    iget-boolean p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->isDeleteDialogShow:Z

    if-eqz p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 0

    .line 364
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 232
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 270
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "opfingerprint_rename"

    .line 271
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "opfingerprint_delete"

    .line 273
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$3;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 293
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 226
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const-string v1, "renamedialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "renamedata"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const-string v1, "warndialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    const-string v1, "deletedialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 203
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    const-string v0, "fingerprint_name"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    .line 330
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_dialog_delete:I

    .line 332
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_fingerprint_delete_confirm_message:I

    .line 333
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 334
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$6;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 345
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mDeleteDialog:Landroidx/appcompat/app/AlertDialog;

    .line 353
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showRenameDialog()V
    .locals 4

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_fingerprint_rename_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    sget v1, Lcom/android/settings/R$id;->opfinger_rename_ed:I

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Landroid/widget/EditText;

    .line 372
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 374
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameData:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->renameEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$8;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$8;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 395
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 396
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/android/settings/R$string;->user_rename:I

    .line 397
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 399
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->okay:I

    .line 400
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->alert_dialog_cancel:I

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$9;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$9;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 401
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 410
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroidx/appcompat/app/AlertDialog;

    .line 411
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 412
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mRenameDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$10;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3

    .line 303
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 304
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->fingerprint_last_delete_title:I

    .line 305
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->fingerprint_last_delete_message:I

    .line 306
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$5;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/hardware/fingerprint/Fingerprint;)V

    .line 307
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$4;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V

    .line 318
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 325
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 326
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
