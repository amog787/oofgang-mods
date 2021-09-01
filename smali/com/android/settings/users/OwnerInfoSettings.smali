.class public Lcom/android/settings/users/OwnerInfoSettings;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Landroid/widget/EditText;

.field private mUserId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->owner_info_edit_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    .line 83
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public static show(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    new-instance v0, Lcom/android/settings/users/OwnerInfoSettings;

    invoke-direct {v0}, Lcom/android/settings/users/OwnerInfoSettings;-><init>()V

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "ownerInfo"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x213

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {p2, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 96
    iget-object p2, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;

    invoke-interface {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;->onOwnerInfoUpdated()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    sget v0, Lcom/android/settings/R$string;->feature_not_support_split_screen:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 61
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mUserId:I

    .line 62
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->ownerinfo:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/users/OwnerInfoSettings;->initView()V

    .line 69
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->owner_info_settings_title:I

    .line 70
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/users/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 71
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setBottomShow(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->save:I

    .line 73
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->cancel:I

    .line 74
    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
