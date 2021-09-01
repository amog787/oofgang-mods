.class public final Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;
.super Ljava/lang/Object;
.source "StorageDashboardFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VolumeSizeCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 396
    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/storage/StorageManager;

    .line 397
    new-instance v0, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v0, p2}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 398
    const-class p2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/StorageStatsManager;

    .line 399
    new-instance v1, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$100(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-direct {v1, p1, v0, p2, p0}, Lcom/android/settings/deviceinfo/storage/VolumeSizesLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)V

    return-object v1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ">;",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 410
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$202(Lcom/android/settings/deviceinfo/StorageDashboardFragment;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    .line 415
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$300(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    .line 416
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->this$0:Lcom/android/settings/deviceinfo/StorageDashboardFragment;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/StorageDashboardFragment;->access$400(Lcom/android/settings/deviceinfo/StorageDashboardFragment;)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 391
    check-cast p2, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageDashboardFragment$VolumeSizeCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
