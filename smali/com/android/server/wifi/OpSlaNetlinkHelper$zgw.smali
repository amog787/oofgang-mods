.class Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;->s1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gwm(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gck(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDownloadingHeytapNotify:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->wtn(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ssp(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bio(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->wtn(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->dma(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qbh(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->oif(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    :cond_2
    :goto_0
    return-void
.end method
