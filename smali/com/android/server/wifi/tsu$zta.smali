.class Lcom/android/server/wifi/tsu$zta;
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

    iput-object p1, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    invoke-static {p1, p2}, Lcom/android/server/wifi/tsu;->you(Lcom/android/server/wifi/tsu;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object p1, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    invoke-static {p1}, Lcom/android/server/wifi/tsu;->zta(Lcom/android/server/wifi/tsu;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    invoke-static {p1}, Lcom/android/server/wifi/tsu;->zta(Lcom/android/server/wifi/tsu;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/tsu;->sis(Lcom/android/server/wifi/tsu;Z)Z

    iget-object p0, p0, Lcom/android/server/wifi/tsu$zta;->zta:Lcom/android/server/wifi/tsu;

    invoke-static {p0}, Lcom/android/server/wifi/tsu;->tsu(Lcom/android/server/wifi/tsu;)V

    return-void
.end method
