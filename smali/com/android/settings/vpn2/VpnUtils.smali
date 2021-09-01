.class public Lcom/android/settings/vpn2/VpnUtils;
.super Ljava/lang/Object;
.source "VpnUtils.java"


# direct methods
.method public static clearLockdownVpn(Landroid/content/Context;)V
    .locals 2

    .line 47
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 49
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    return-void
.end method

.method public static disconnectLegacyVpn(Landroid/content/Context;)Z
    .locals 3

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 99
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v1

    .line 100
    invoke-interface {v1, v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    const/4 p0, 0x0

    const-string v2, "[Legacy VPN]"

    .line 103
    invoke-interface {v1, p0, v2, v0}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "VpnUtils"

    const-string v1, "Legacy VPN could not be disconnected"

    .line 107
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getConnectedPackage(Landroid/net/IConnectivityManager;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-interface {p0, p1}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .line 84
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private static getIConnectivityManager()Landroid/net/IConnectivityManager;
    .locals 1

    const-string v0, "connectivity"

    .line 89
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static getLockdownVpn()Ljava/lang/String;
    .locals 3

    .line 41
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    const-string v1, "LOCKDOWN_VPN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;Z)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public static isAlwaysOnVpnSet(Landroid/net/ConnectivityManager;I)Z
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnyLockdownActive(Landroid/content/Context;)Z
    .locals 4

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 65
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "always_on_vpn_lockdown"

    invoke-static {p0, v1, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static isVpnActive(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getIConnectivityManager()Landroid/net/IConnectivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVpnLockdown(Ljava/lang/String;)Z
    .locals 1

    .line 60
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 53
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "LOCKDOWN_VPN"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 56
    invoke-static {p0}, Lcom/android/settings/vpn2/VpnUtils;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    return-void
.end method
