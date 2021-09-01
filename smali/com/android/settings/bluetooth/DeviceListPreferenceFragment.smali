.class public abstract Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mDeviceListGroup:Landroidx/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mScanEnabled:Z

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

.field final mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field mShowDevicesWithoutNames:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedList:Ljava/util/List;

    .line 82
    sget-object p1, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 146
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 148
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addDeviceCategory(Landroidx/preference/PreferenceGroup;ILcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;Z)V
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 266
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 267
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p4, :cond_0

    .line 270
    sget-object p2, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 273
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V

    const/4 p2, 0x1

    .line 274
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    const-string p0, "DeviceListPreferenceFragment"

    const-string p1, "Trying to create a device preference before the list group/category exists!"

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 196
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v1, :cond_1

    .line 200
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    const/4 v4, 0x2

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ZI)V

    .line 202
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 204
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->hideSecondTarget(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 208
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 209
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method disableScanning()V
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->stopScanning()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    return-void
.end method

.method enableScanning()V
    .locals 1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->startScanning()V

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    return-void
.end method

.method public abstract getDeviceListKey()Ljava/lang/String;
.end method

.method protected initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    return-void
.end method

.method abstract initPreferencesFromPreferenceScreen()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    const-string p0, "DeviceListPreferenceFragment"

    const-string p1, "Bluetooth is not supported on this device"

    .line 99
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 p1, 0x1

    const-string v0, "persist.bluetooth.showdeviceswithoutnames"

    .line 106
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mShowDevicesWithoutNames:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->initPreferencesFromPreferenceScreen()V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getDeviceListKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz p1, :cond_0

    .line 229
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .line 172
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onClicked()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 154
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_scan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->startScanning()V

    return v1

    .line 159
    :cond_0
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-eqz v0, :cond_1

    .line 160
    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .line 161
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 163
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mSelectedList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    return v1

    .line 168
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 248
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mScanEnabled:Z

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->startScanning()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 120
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 129
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 141
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method final setFilter(I)V
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method final setFilter(Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/settingslib/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method startScanning()V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    :cond_0
    return-void
.end method

.method stopScanning()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_0
    return-void
.end method

.method updateFooterPreference(Landroidx/preference/Preference;)V
    .locals 4

    .line 218
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 220
    sget v1, Lcom/android/settings/R$string;->bluetooth_footer_mac_message:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 222
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 220
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
