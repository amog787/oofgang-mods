.class Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;
.super Ljava/lang/Object;
.source "PublicVolumeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PublicVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 234
    new-instance p1, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PublicVolumeSettings$1;->this$0:Lcom/android/settings/deviceinfo/PublicVolumeSettings;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/PublicVolumeSettings;->access$000(Lcom/android/settings/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
