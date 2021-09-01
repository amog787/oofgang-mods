.class public abstract Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "AbstractWifiMacAddressPreferenceController.java"


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field static final OFF:I = 0x0

.field static final ON:I = 0x1


# instance fields
.field private mWifiMacAddress:Landroidx/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 45
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 56
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wifi_mac_address"

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroidx/preference/Preference;

    .line 74
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->updateConnectivity()V

    :cond_0
    return-void
.end method

.method protected getConnectivityIntents()[Ljava/lang/String;
    .locals 0

    .line 80
    sget-object p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_mac_address"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected updateConnectivity()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    .line 90
    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroidx/preference/Preference;

    sget v0, Lcom/android/settingslib/R$string;->status_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractWifiMacAddressPreferenceController;->mWifiMacAddress:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
