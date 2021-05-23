.class public Lcom/android/server/am/ire$rtg;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "rtg"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/ire;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ire;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-static {}, Lcom/android/server/am/ire;->you()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusSmartBoostManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "uid"

    const/4 v2, 0x1

    const-wide/32 v3, 0x5265c00

    const-string v5, "pkgName"

    const-string v6, "pid"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/ire;->rtg(Lcom/android/server/am/ire;III)Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {v3, p1, v1, v2}, Lcom/android/server/am/ire;->tsu(Lcom/android/server/am/ire;Ljava/lang/String;IZ)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/am/ire;->rtg(Lcom/android/server/am/ire;III)Z

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "lastPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lastUid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "lastPkgName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v1, v0, p1}, Lcom/android/server/am/ire;->ssp(Lcom/android/server/am/ire;IILjava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0}, Lcom/android/server/am/ire;->bio(Lcom/android/server/am/ire;)I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, p1}, Lcom/android/server/am/ire;->sis(Lcom/android/server/am/ire;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "codePath"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/ire;->qbh(Lcom/android/server/am/ire;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p1}, Lcom/android/server/am/ire;->dma(Lcom/android/server/am/ire;)I

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v2}, Lcom/android/server/am/ire;->ywr(Lcom/android/server/am/ire;Z)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, p1}, Lcom/android/server/am/ire;->gck(Lcom/android/server/am/ire;I)Z

    goto :goto_0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hotCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v1, p1, v0}, Lcom/android/server/am/ire;->wtn(Lcom/android/server/am/ire;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p1}, Lcom/android/server/am/ire;->kth(Lcom/android/server/am/ire;)V

    iget-object p1, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p1}, Lcom/android/server/am/ire;->bio(Lcom/android/server/am/ire;)I

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0, v3, v4}, Lcom/android/server/am/ire;->igw(Lcom/android/server/am/ire;J)V

    goto :goto_0

    :pswitch_c
    iget-object p0, p0, Lcom/android/server/am/ire$rtg;->zta:Lcom/android/server/am/ire;

    invoke-static {p0}, Lcom/android/server/am/ire;->kth(Lcom/android/server/am/ire;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
