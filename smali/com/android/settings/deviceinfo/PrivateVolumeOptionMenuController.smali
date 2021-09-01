.class public Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;
.super Ljava/lang/Object;
.source "PrivateVolumeOptionMenuController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mVolumeInfo:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 50
    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 55
    sget p0, Lcom/android/settings/R$string;->storage_menu_migrate:I

    const/4 p2, 0x0

    const/16 v0, 0x64

    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 77
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 78
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardMigrateConfirm;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    const/16 v1, 0x64

    .line 66
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeOptionMenuController;->mVolumeInfo:Landroid/os/storage/VolumeInfo;

    .line 70
    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 68
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method
