.class Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/LocalMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceAttributeChangeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/media/LocalMediaManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/media/LocalMediaManager;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAttributesChanged()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-static {v0}, Lcom/android/settingslib/media/LocalMediaManager;->access$200(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 652
    invoke-static {v0}, Lcom/android/settingslib/media/LocalMediaManager;->access$200(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    .line 654
    invoke-static {v0}, Lcom/android/settingslib/media/LocalMediaManager;->access$200(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-static {v0}, Lcom/android/settingslib/media/LocalMediaManager;->access$200(Lcom/android/settingslib/media/LocalMediaManager;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/MediaDevice;->setState(I)V

    .line 657
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settingslib/media/LocalMediaManager;->access$202(Lcom/android/settingslib/media/LocalMediaManager;Lcom/android/settingslib/media/MediaDevice;)Lcom/android/settingslib/media/MediaDevice;

    .line 658
    iget-object v0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchOnRequestFailed(I)V

    .line 660
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/media/LocalMediaManager$DeviceAttributeChangeCallback;->this$0:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->dispatchDeviceAttributesChanged()V

    return-void
.end method
