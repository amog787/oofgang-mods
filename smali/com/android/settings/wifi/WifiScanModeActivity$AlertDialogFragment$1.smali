.class Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;
.super Ljava/lang/Object;
.source "WifiScanModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;->this$0:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;->this$0:Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/WifiScanModeActivity;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V

    return-void
.end method
