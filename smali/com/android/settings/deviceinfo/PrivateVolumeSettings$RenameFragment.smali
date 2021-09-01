.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 671
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/deviceinfo/PrivateVolumeSettings;Landroid/os/storage/VolumeInfo;)V
    .locals 3

    .line 673
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;-><init>()V

    const/4 v1, 0x0

    .line 676
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 677
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 678
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 680
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "rename"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x233

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 690
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 691
    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 693
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.os.storage.extra.FS_UUID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 694
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 695
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findRecordByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object v2

    .line 697
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 698
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 700
    sget v4, Lcom/android/settings/R$layout;->dialog_edittext:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 701
    sget v4, Lcom/android/settings/R$id;->edittext:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 702
    invoke-virtual {v2}, Landroid/os/storage/VolumeRecord;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 704
    sget v2, Lcom/android/settings/R$string;->storage_rename_title:I

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 705
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 707
    sget p1, Lcom/android/settings/R$string;->save:I

    new-instance v2, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;

    invoke-direct {v2, p0, v0, v1, v4}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V

    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 716
    sget p0, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v3, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
