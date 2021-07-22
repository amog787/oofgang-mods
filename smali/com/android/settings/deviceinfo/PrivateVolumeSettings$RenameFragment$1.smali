.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fsUuid:Ljava/lang/String;

.field final synthetic val$nickname:Landroid/widget/EditText;

.field final synthetic val$storageManager:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment;Landroid/os/storage/StorageManager;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    .line 708
    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$storageManager:Landroid/os/storage/StorageManager;

    iput-object p3, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$fsUuid:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$nickname:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 712
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$storageManager:Landroid/os/storage/StorageManager;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$fsUuid:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$RenameFragment$1;->val$nickname:Landroid/widget/EditText;

    .line 713
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 712
    invoke-virtual {p1, p2, p0}, Landroid/os/storage/StorageManager;->setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
