.class public Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeviceNamePreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;
    }
.end annotation


# static fields
.field private static final KEY_PENDING_DEVICE_NAME:Ljava/lang/String; = "key_pending_device_name"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDeviceName:Ljava/lang/String;

.field private mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

.field private mPendingDeviceName:Ljava/lang/String;

.field private mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

.field private final mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p2, "wifi"

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 60
    new-instance p1, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    .line 61
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->initializeDeviceName()V

    return-void
.end method

.method private static final getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 162
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v4, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 162
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 170
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeDeviceName()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "ext_device_name"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 83
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private setBluetoothDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p0, :cond_0

    .line 153
    invoke-static {p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getFilteredBluetoothString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setSettingsGlobalDeviceName(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setBluetoothDeviceName(Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setTetherSsidName(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSettingsGlobalDeviceName(Ljava/lang/String;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ext_device_name"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private setTetherSsidName(Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 176
    iget-object p0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 177
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 176
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x3

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
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

.method public isTextValid(Ljava/lang/String;)Z
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "key_pending_device_name"

    .line 183
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    .line 105
    iget-object p0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    if-eqz p0, :cond_0

    .line 106
    invoke-interface {p0, p2}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;->showDeviceNameWarningDialog(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 189
    iget-object p0, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    const-string v0, "key_pending_device_name"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHost(Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mHost:Lcom/android/settings/deviceinfo/DeviceNamePreferenceController$DeviceNamePreferenceHost;

    return-void
.end method

.method public updateDeviceName(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPendingDeviceName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->mPreference:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/DeviceNamePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
