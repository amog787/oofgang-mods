.class final Lcom/android/server/cgv/you$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cgv/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/cgv/you;


# direct methods
.method constructor <init>(Lcom/android/server/cgv/you;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/cgv/sis;->irq()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Display config changed, Re-Create Bubble"

    invoke-static {p1}, Lcom/android/server/cgv/you;->zgw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/cgv/sis;->vju()Z

    move-result p1

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/cgv/sis;->ear(I)V

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0, v2}, Lcom/android/server/cgv/you;->gck(Lcom/android/server/cgv/you;Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0}, Lcom/android/server/cgv/you;->you(Lcom/android/server/cgv/you;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x96

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->igw(Lcom/android/server/cgv/you;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :pswitch_2
    const-string v0, "User Close VC Bubble"

    invoke-static {v0}, Lcom/android/server/cgv/you;->obl(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    :pswitch_3
    const-string v0, "Paste Code!"

    invoke-static {v0}, Lcom/android/server/cgv/you;->obl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->sis(Lcom/android/server/cgv/you;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/cgv/you;->cno(Lcom/android/server/cgv/you;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->kth(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/zta;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v2}, Lcom/android/server/cgv/you;->sis(Lcom/android/server/cgv/you;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/cgv/zta;->zta(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->bio(Lcom/android/server/cgv/you;)V

    goto :goto_0

    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Hide Window. W ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/cgv/you;->zgw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/cgv/sis;->lqr()V

    iget-object p0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/cgv/sis;->b(Lcom/android/server/cgv/sis$kth;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VC Code Expired. W ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cgv/you;->obl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0, v3}, Lcom/android/server/cgv/you;->tsu(Lcom/android/server/cgv/you;Z)Z

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/cgv/you;->rtg(Lcom/android/server/cgv/you;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0, v2}, Lcom/android/server/cgv/you;->ssp(Lcom/android/server/cgv/you;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/cgv/sis;->ear(I)V

    iget-object p0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0, v2}, Lcom/android/server/cgv/you;->gck(Lcom/android/server/cgv/you;Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis;

    goto :goto_1

    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Show If Allow. W ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/cgv/you;->zgw(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->igw(Lcom/android/server/cgv/you;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p0, "Unsatisfied Bubble Show Condition."

    invoke-static {p0}, Lcom/android/server/cgv/you;->zgw(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    new-instance v0, Lcom/android/server/cgv/sis;

    iget-object v1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v1}, Lcom/android/server/cgv/you;->dma(Lcom/android/server/cgv/you;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/cgv/sis;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/server/cgv/you;->gck(Lcom/android/server/cgv/you;Lcom/android/server/cgv/sis;)Lcom/android/server/cgv/sis;

    :cond_5
    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v0}, Lcom/android/server/cgv/you;->ywr(Lcom/android/server/cgv/you;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {v1}, Lcom/android/server/cgv/you;->kth(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/zta;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/cgv/zta;->tsu()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/cgv/sis;->c(Ljava/lang/String;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p1}, Lcom/android/server/cgv/you;->wtn(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/cgv/you$sis;->zta:Lcom/android/server/cgv/you;

    invoke-static {p0}, Lcom/android/server/cgv/you;->qbh(Lcom/android/server/cgv/you;)Lcom/android/server/cgv/sis$kth;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/cgv/sis;->b(Lcom/android/server/cgv/sis$kth;)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
