.class Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->rtg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;


# direct methods
.method constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "OPSA"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_CONNECTIVITY_CHANGE== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object p1, p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)I

    goto/16 :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==MSG_PKG_INSTALL== "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==MSG_GEN_BATTERT_OUTLIER== "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z()V

    goto :goto_1

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "==MSG_BATT_SNAPSHOT_ON_END== "

    goto :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "==MSG_BATT_SNAPSHOT_ON_START== "

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_6
    const-string p1, "[OnlineConfig] Try to get OnLineConfig..."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerStandbyOnlineConfig"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb$zta;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lorg/json/JSONArray;)V

    :cond_0
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
