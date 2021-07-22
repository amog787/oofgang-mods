.class Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiScanWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/slice/WifiScanWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiNetworkCallback"
.end annotation


# instance fields
.field private mHasPartialConnectivity:Z

.field private mIsCaptivePortal:Z

.field private mIsValidated:Z

.field private final mNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/slice/WifiScanWorker;Landroid/net/Network;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 213
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    iput-object p1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mNetwork:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public isSameNetwork(Landroid/net/Network;)Z
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->isSameNetwork(Landroid/net/Network;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    .line 223
    iget-boolean v1, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mHasPartialConnectivity:Z

    .line 224
    iget-boolean v2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsValidated:Z

    const/16 v3, 0x11

    .line 226
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    const/16 v3, 0x18

    .line 227
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mHasPartialConnectivity:Z

    const/16 v3, 0x10

    .line 228
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsValidated:Z

    .line 230
    iget-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mHasPartialConnectivity:Z

    if-ne v1, v3, :cond_1

    if-ne v2, p2, :cond_1

    return-void

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$000(Lcom/android/settings/wifi/slice/WifiScanWorker;)V

    if-nez v0, :cond_2

    .line 239
    iget-boolean p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->mIsCaptivePortal:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    .line 240
    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$100(Lcom/android/settings/wifi/slice/WifiScanWorker;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->isWifiClicked(Landroid/net/wifi/WifiInfo;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    .line 241
    invoke-virtual {p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;->isSessionValid()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 242
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {v0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$200(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/slice/ConnectToWifiHandler;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.net.extra.NETWORK"

    .line 243
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 244
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 246
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiScanWorker$WifiNetworkCallback;->this$0:Lcom/android/settings/wifi/slice/WifiScanWorker;

    invoke-static {p0}, Lcom/android/settings/wifi/slice/WifiScanWorker;->access$200(Lcom/android/settings/wifi/slice/WifiScanWorker;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method
