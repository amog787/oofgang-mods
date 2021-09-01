.class Lcom/android/settings/wifi/CaptivePortalNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CaptivePortalNetworkCallback.java"


# instance fields
.field private final mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

.field private mIsCaptivePortal:Z

.field private final mNetwork:Landroid/net/Network;


# direct methods
.method constructor <init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    .line 35
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    return-void
.end method

.method private setIsCaptivePortal(Z)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 66
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->onCaptivePortalCapabilityChanged()V

    return-void
.end method


# virtual methods
.method public final getNetwork()Landroid/net/Network;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public final isCaptivePortal()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mIsCaptivePortal:Z

    return p0
.end method

.method public final isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    invoke-static {p2}, Lcom/android/settings/wifi/WifiUtils;->canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z

    move-result p1

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->setIsCaptivePortal(Z)V

    .line 51
    iget-object p0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mConnectedApPreference:Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setCaptivePortal(Z)V

    :cond_0
    return-void
.end method

.method public abstract onCaptivePortalCapabilityChanged()V
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->setIsCaptivePortal(Z)V

    :cond_0
    return-void
.end method
