.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 30
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 34
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->storage_wizard_generic:I

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    .line 36
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_title:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "migrate_skip"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_v2_internal_body:I

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 44
    :cond_1
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_v2_internal_moved_body:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 44
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 48
    :cond_2
    sget p1, Lcom/android/settings/R$string;->storage_wizard_ready_v2_external_body:I

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    .line 52
    :goto_0
    sget p1, Lcom/android/settings/R$string;->done:I

    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method
