.class public Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiP2pPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mFilter:Landroid/content/IntentFilter;

.field private final mLocationFilter:Landroid/content/IntentFilter;

.field private final mLocationManager:Landroid/location/LocationManager;

.field final mLocationReceiver:Landroid/content/BroadcastReceiver;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiDirectPref:Landroidx/preference/Preference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V
    .locals 2

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    .line 55
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController$2;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationFilter:Landroid/content/IntentFilter;

    .line 72
    iput-object p3, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 73
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    const-string p2, "location"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method private togglePreferences()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    .line 116
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 114
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_direct"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiDirectPref:Landroidx/preference/Preference;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->togglePreferences()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_direct"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method
