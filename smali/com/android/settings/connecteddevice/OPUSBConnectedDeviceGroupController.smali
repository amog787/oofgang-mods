.class public Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPUSBConnectedDeviceGroupController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/connecteddevice/DevicePreferenceCallback;


# static fields
.field private static final KEY:Ljava/lang/String; = "usb_connected_device_list"


# instance fields
.field private mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

.field private mOrder:I

.field mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "usb_connected_device_list"

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x7fffffff

    .line 41
    iput p1, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mOrder:I

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 64
    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v0, "usb_connected_device_list"

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v1

    iput v1, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mOrder:I

    .line 68
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 73
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->initUsbPreference(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.usb.accessory"

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.hardware.usb.host"

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "usb_connected_device_list"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    return-void
.end method

.method public init(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    new-instance v1, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-direct {v1, v0, p1, p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Lcom/android/settings/connecteddevice/DevicePreferenceCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->init(Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;)V

    return-void
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onDeviceAdded(Landroidx/preference/Preference;)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mOrder:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onDeviceRemoved(Landroidx/preference/Preference;)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/connecteddevice/OPUSBConnectedDeviceGroupController;->mConnectedUsbDeviceUpdater:Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/ConnectedUsbDeviceUpdater;->unregisterCallback()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
