.class Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;
.super Ljava/lang/Object;
.source "PrivateVolumeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;Landroid/content/Intent;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 782
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->this$0:Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$OtherInfoFragment$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/android/settings/Utils;->launchIntent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)V

    return-void
.end method
