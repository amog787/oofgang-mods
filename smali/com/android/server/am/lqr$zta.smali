.class Lcom/android/server/am/lqr$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/lqr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/lqr;


# direct methods
.method constructor <init>(Lcom/android/server/am/lqr;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0xdb21ee7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const v1, 0x7fdd61db

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.haha.action.test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p0}, Lcom/android/server/am/lqr;->tsu(Lcom/android/server/am/lqr;)V

    goto/16 :goto_4

    :cond_4
    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    goto :goto_3

    :sswitch_1
    const-string v0, "high_power_usage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x6

    goto :goto_3

    :sswitch_2
    const-string v0, "debug_on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x4

    goto :goto_3

    :sswitch_3
    const-string v0, "dump"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v4

    goto :goto_3

    :sswitch_4
    const-string v0, "debug_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    goto :goto_3

    :sswitch_5
    const-string v0, "blk_task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x7

    goto :goto_3

    :sswitch_6
    const-string v0, "enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    goto :goto_3

    :sswitch_7
    const-string v0, "dumplist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    :goto_2
    move p1, v2

    :goto_3
    const-string v0, "add"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "task"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p0}, Lcom/android/server/am/lqr;->ugm(Lcom/android/server/am/lqr;)Ljava/util/HashSet;

    move-result-object p0

    if-eqz p2, :cond_6

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "uid"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_8

    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p0}, Lcom/android/server/am/lqr;->bvj(Lcom/android/server/am/lqr;)Lcom/android/server/am/StartAppSpecialUidsPolicy;

    move-result-object p0

    if-eqz p1, :cond_7

    invoke-virtual {p0, p2}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp(I)V

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gwm(I)V

    goto/16 :goto_4

    :pswitch_2
    sput-boolean v4, Lcom/android/server/am/lqr;->n:Z

    goto/16 :goto_4

    :pswitch_3
    sput-boolean v3, Lcom/android/server/am/lqr;->n:Z

    goto/16 :goto_4

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    iput-boolean v4, p0, Lcom/android/server/am/lqr;->zta:Z

    goto/16 :goto_4

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    iput-boolean v3, p0, Lcom/android/server/am/lqr;->zta:Z

    goto/16 :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p1}, Lcom/android/server/am/lqr;->oif(Lcom/android/server/am/lqr;)V

    iget-object p1, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p1}, Lcom/android/server/am/lqr;->bvj(Lcom/android/server/am/lqr;)Lcom/android/server/am/StartAppSpecialUidsPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gck()V

    iget-object p1, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p1}, Lcom/android/server/am/lqr;->ibl(Lcom/android/server/am/lqr;)Lcom/android/server/am/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/l;->wtn()V

    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p0}, Lcom/android/server/am/lqr;->gwm(Lcom/android/server/am/lqr;)Lcom/android/server/am/StartAppConfigManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/StartAppConfigManager;->you()V

    goto/16 :goto_4

    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # SDEBUG:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/am/lqr;->n:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # sEnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    iget-boolean p2, p2, Lcom/android/server/am/lqr;->zta:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # sProviderControlEnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p2}, Lcom/android/server/am/lqr;->you(Lcom/android/server/am/lqr;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # sServiceRestartControlEnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p2}, Lcom/android/server/am/lqr;->sis(Lcom/android/server/am/lqr;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # sProcessRestartControlEnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p2}, Lcom/android/server/am/lqr;->dma(Lcom/android/server/am/lqr;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # sOnePixelBlockEnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p2}, Lcom/android/server/am/lqr;->ywr(Lcom/android/server/am/lqr;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump # sUnnoticeableActivityBlockEnable:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/lqr$zta;->zta:Lcom/android/server/am/lqr;

    invoke-static {p0}, Lcom/android/server/am/lqr;->qbh(Lcom/android/server/am/lqr;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "dump # sCanForceStop:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/am/lqr;->r:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    :cond_8
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e742f6e -> :sswitch_7
        -0x4d6ada7d -> :sswitch_6
        -0x2ea45a5d -> :sswitch_5
        -0xbcbee7d -> :sswitch_4
        0x2f39f4 -> :sswitch_3
        0x20a6d74b -> :sswitch_2
        0x4d79aaca -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
