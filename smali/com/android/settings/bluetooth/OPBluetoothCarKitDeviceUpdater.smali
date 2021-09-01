.class public abstract Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;
.super Ljava/lang/Object;
.source "OPBluetoothCarKitDeviceUpdater.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# instance fields
.field protected final mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

.field protected mFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field protected final mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected mPrefContext:Landroid/content/Context;

.field protected final mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mShowDeviceWithoutNames:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 74
    iput-object p2, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    const-string p1, "persist.bluetooth.showdeviceswithoutnames"

    const/4 p2, 0x1

    .line 75
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mShowDeviceWithoutNames:Z

    .line 77
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    .line 78
    iput-object p3, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method


# virtual methods
.method protected addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 4

    .line 193
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    iget-object v2, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPrefContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mShowDeviceWithoutNames:Z

    invoke-direct {v1, v2, p1, v3}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V

    .line 198
    iget-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    invoke-interface {p0, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceAdded(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 105
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public abstract isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public registerCallback()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->forceUpdate()V

    return-void
.end method

.method protected removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 207
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mDevicePreferenceCallback:Lcom/android/settings/connecteddevice/DevicePreferenceCallback;

    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    invoke-interface {v0, v1}, Lcom/android/settings/connecteddevice/DevicePreferenceCallback;->onDeviceRemoved(Landroidx/preference/Preference;)V

    .line 210
    iget-object p0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setPrefContext(Landroid/content/Context;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mPrefContext:Landroid/content/Context;

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    return-void
.end method

.method protected update(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->isFilterMatched(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->addPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/OPBluetoothCarKitDeviceUpdater;->removePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :goto_0
    return-void
.end method
