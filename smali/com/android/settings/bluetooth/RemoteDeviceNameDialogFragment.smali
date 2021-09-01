.class public Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
.super Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.source "RemoteDeviceNameDialogFragment.java"


# instance fields
.field private mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;
    .locals 2

    .line 38
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 39
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cached_device"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;-><init>()V

    .line 41
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "cached_device"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method protected getDeviceName()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getDialogTitle()I
    .locals 0

    .line 66
    sget p0, Lcom/android/settings/R$string;->bluetooth_device_name:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f7

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->getDevice(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method

.method protected setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/bluetooth/RemoteDeviceNameDialogFragment;->mDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p0, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
