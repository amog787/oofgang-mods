.class Lcom/android/server/wifi/tsu$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/tsu;->gck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/tsu;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/tsu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/tsu$you;->zta:Lcom/android/server/wifi/tsu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wifi/tsu$you;->zta:Lcom/android/server/wifi/tsu;

    const-string v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wifi/tsu;->ssp(Lcom/android/server/wifi/tsu;I)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "receive ACTION_THERMAL_STATUS intent, mThermalStatus = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wifi/tsu$you;->zta:Lcom/android/server/wifi/tsu;

    invoke-static {p2}, Lcom/android/server/wifi/tsu;->rtg(Lcom/android/server/wifi/tsu;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpWifiLowLatency"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wifi/tsu$you;->zta:Lcom/android/server/wifi/tsu;

    invoke-static {p0}, Lcom/android/server/wifi/tsu;->tsu(Lcom/android/server/wifi/tsu;)V

    return-void
.end method
