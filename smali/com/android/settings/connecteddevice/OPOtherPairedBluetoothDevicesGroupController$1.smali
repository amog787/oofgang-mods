.class Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController$1;
.super Landroid/content/BroadcastReceiver;
.source "OPOtherPairedBluetoothDevicesGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController$1;->this$0:Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x8628ed5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "oneplus.action.intent.UpdateBluetoothCarkitDevice"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 80
    :cond_2
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController$1;->this$0:Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;

    invoke-static {p0}, Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;->access$000(Lcom/android/settings/connecteddevice/OPOtherPairedBluetoothDevicesGroupController;)Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->forceUpdate()V

    :goto_2
    return-void
.end method
