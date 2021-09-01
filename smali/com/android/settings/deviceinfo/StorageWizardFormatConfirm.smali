.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageWizardFormatConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 100
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {p4, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "android.os.storage.extra.DISK_ID"

    .line 101
    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "format_forget_uuid"

    .line 102
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "format_private"

    .line 103
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 59
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "format_forget_uuid"

    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "format_private"

    .line 61
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;-><init>()V

    .line 64
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "format_warning"

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showPrivate(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static showPublic(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x55f

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 78
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_forget_uuid"

    .line 79
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format_private"

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 83
    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v3

    .line 85
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    sget v6, Lcom/android/settings/R$string;->storage_wizard_format_confirm_v2_title:I

    .line 87
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 86
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 89
    sget v6, Lcom/android/settings/R$string;->storage_wizard_format_confirm_v2_body:I

    .line 90
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    .line 92
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 93
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 89
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    const/4 v8, 0x0

    .line 95
    invoke-virtual {v5, v6, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 96
    sget v6, Lcom/android/settings/R$string;->storage_wizard_format_confirm_v2_action:I

    .line 97
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v6, v7, [Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    .line 97
    invoke-static {p0, v6}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v3, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;

    invoke-direct {v3, p1, v1, v2, v0}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$c4jIKjriuaEtVR7ERojcHILapk8;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    invoke-virtual {v5, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
