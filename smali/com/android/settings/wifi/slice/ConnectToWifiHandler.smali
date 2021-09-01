.class public Lcom/android/settings/wifi/slice/ConnectToWifiHandler;
.super Landroid/content/BroadcastReceiver;
.source "ConnectToWifiHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method connect(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->saveSession()V

    .line 62
    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->saveClickedWifi(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 64
    new-instance p0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->getConnectingType(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p2, p0}, Lcom/android/settingslib/wifi/AccessPoint;->startOsuProvisioning(Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 74
    :cond_2
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 75
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.net.extra.NETWORK"

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    const-string v1, "access_point_state"

    .line 46
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    if-eqz v0, :cond_1

    .line 50
    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifi()V

    .line 51
    const-class p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 53
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 55
    new-instance v0, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {v0, p1, p2}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;->connect(Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_2
    :goto_0
    return-void
.end method
