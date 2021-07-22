.class public Lcom/android/settings/network/telephony/DataConnectivityListener;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DataConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/DataConnectivityListener$Client;
    }
.end annotation


# instance fields
.field private mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/telephony/DataConnectivityListener$Client;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    .line 40
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 41
    iput-object p2, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    .line 42
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 p2, 0xc

    .line 43
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mNetworkRequest:Landroid/net/NetworkRequest;

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 59
    invoke-virtual {p2, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/DataConnectivityListener$Client;->onDataConnectivityChange()V

    :cond_0
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/DataConnectivityListener$Client;->onDataConnectivityChange()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mClient:Lcom/android/settings/network/telephony/DataConnectivityListener$Client;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/DataConnectivityListener$Client;->onDataConnectivityChange()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, p0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataConnectivityListener;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
