.class public Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private isSingleUser(Landroid/os/UserManager;)Z
    .locals 1

    .line 119
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserCount()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    .line 121
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->startUninstallProgress()V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 37
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getDialogInfo()Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    move-result-object v0

    .line 40
    iget-object v1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 42
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v4, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    .line 48
    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 50
    sget v4, Lcom/android/settings/R$string;->uninstall_activity_text:I

    new-array v7, v5, [Ljava/lang/Object;

    aput-object p1, v7, v6

    .line 51
    invoke-virtual {p0, v4, v7}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, ".\n\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    :cond_0
    iget-object p1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    move p1, v6

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    if-eqz p1, :cond_3

    .line 60
    invoke-direct {p0, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    sget p1, Lcom/android/settings/R$string;->uninstall_update_text:I

    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 63
    :cond_2
    sget p1, Lcom/android/settings/R$string;->uninstall_update_text_multiuser:I

    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 66
    :cond_3
    iget-boolean p1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, v4}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 67
    sget p1, Lcom/android/settings/R$string;->oneplus_uninstatll_multi_app_msg:I

    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 68
    :cond_4
    iget-object p1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v7, 0x3e7

    if-nez p1, :cond_6

    .line 69
    iget-object p1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 71
    iget-object v4, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    iget-object v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 72
    sget p1, Lcom/android/settings/R$string;->oneplus_uninstatll_multi_app_msg:I

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget p1, Lcom/android/settings/R$string;->oneplus_uninstatll_multi_app_title:I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 76
    :cond_5
    sget v0, Lcom/android/settings/R$string;->uninstall_application_text_user:I

    new-array v4, v5, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object p1, v4, v6

    .line 77
    invoke-virtual {p0, v0, v4}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 80
    :cond_6
    iget-object p1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    iget-object p1, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, v7, :cond_7

    .line 81
    sget p1, Lcom/android/settings/R$string;->oneplus_uninstatll_multi_app_msg:I

    .line 82
    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget p1, Lcom/android/settings/R$string;->oneplus_uninstatll_multi_app_title:I

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v1, v0, v6

    invoke-virtual {p0, p1, v0}, Landroid/app/DialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 85
    :cond_7
    sget p1, Lcom/android/settings/R$string;->oneplus_uninstatll_multi_main_app_msg:I

    invoke-virtual {p0, p1}, Landroid/app/DialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :goto_1
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 91
    invoke-virtual {v2, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 92
    invoke-virtual {v2, p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 109
    invoke-virtual {p0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
