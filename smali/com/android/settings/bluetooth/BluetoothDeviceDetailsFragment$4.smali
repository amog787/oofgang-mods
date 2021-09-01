.class Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;
.super Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;
.source "BluetoothDeviceDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)V
    .locals 0

    .line 532
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-direct {p0}, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public updateView(Ljava/lang/String;I)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->access$2000(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment$4;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
