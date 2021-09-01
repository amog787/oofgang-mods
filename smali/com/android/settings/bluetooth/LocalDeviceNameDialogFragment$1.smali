.class Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LocalDeviceNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 40
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_1

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/LocalDeviceNameDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    :cond_1
    return-void
.end method
