.class Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;
.super Landroid/telephony/PhoneStateListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public on5gStateChange(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->on5gStateChange(I)V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->i(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I

    invoke-static {}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSignalStrengthsChanged mLteRsrp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSlaNetlinkHelper_RSRP"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
