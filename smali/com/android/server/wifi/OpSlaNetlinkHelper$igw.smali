.class Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/OpSlaNetlinkHelper;->V0()V
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

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontPackageChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "OpSlaNetlinkHelper"

    invoke-static {p6, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p5, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)Z

    move-result p5

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v0, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)Z

    move-result p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {v3, p1, p3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->r(Lcom/android/server/wifi/OpSlaNetlinkHelper;Ljava/lang/String;I)V

    const-string p1, "disableGameRttDetect.."

    const/4 p3, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez p5, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p2

    const-wide/32 v0, 0x1d4c0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->veq(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cgv(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I

    move-result p1

    if-ne p1, p3, :cond_5

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cgv(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1, p3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0, p3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V

    const-string p0, "enableGameRttDetect.."

    invoke-static {p6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2, v0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t(Lcom/android/server/wifi/OpSlaNetlinkHelper;J)J

    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p2, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V

    invoke-static {p6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p1, p3}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cgv(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;->zta:Lcom/android/server/wifi/OpSlaNetlinkHelper;

    invoke-static {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method
