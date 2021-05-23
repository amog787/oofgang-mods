.class Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ear"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

.field private final zta:I


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    iput p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->zta:I

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->zta:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->zta:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->zta:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->fto(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->zta:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;->you:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->you(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;)V

    return-void
.end method
