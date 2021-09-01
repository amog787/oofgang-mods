.class public Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsMacAddressController.java"


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "device_details_footer"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "device_details_footer"

    .line 46
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/FooterPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->bluetooth_device_mac_address:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 48
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected refresh()V
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsMacAddressController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->bluetooth_device_mac_address:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 54
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
