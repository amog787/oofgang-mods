.class Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$diskId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->val$diskId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 543
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->val$context:Landroid/content/Context;

    const-class v0, Lcom/android/settings/deviceinfo/StorageWizardInit;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    iget-object p2, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->val$diskId:Ljava/lang/String;

    const-string v0, "android.os.storage.extra.DISK_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 545
    iget-object p0, p0, Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment$1;->this$0:Lcom/android/settings/deviceinfo/StorageSettings$DiskInitFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
