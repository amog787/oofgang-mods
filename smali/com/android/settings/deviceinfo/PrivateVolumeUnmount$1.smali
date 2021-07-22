.class Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;
.super Ljava/lang/Object;
.source "PrivateVolumeUnmount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;->access$000(Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeUnmount$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeUnmount;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
