.class Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/os/storage/VolumeInfo;Landroid/content/Context;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private wasAdminSupportIntentShown(Ljava/lang/String;)Z
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 474
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 475
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 474
    invoke-static {v0, p1, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    .line 478
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 477
    invoke-static {v1, p1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 480
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "no_physical_media"

    .line 490
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->wasAdminSupportIntentShown(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 495
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "no_usb_file_transfer"

    .line 496
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->wasAdminSupportIntentShown(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 501
    :cond_1
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
