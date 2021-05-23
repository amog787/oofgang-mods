.class Lcom/oneplus/server/zta$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/server/zta;


# direct methods
.method constructor <init>(Lcom/oneplus/server/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    :try_start_0
    const-string p1, "com.vsync.action.test"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "debug_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0, v0}, Lcom/oneplus/server/zta;->rtg(Lcom/oneplus/server/zta;Z)Z

    goto/16 :goto_0

    :cond_0
    const-string p2, "debug_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0, v1}, Lcom/oneplus/server/zta;->rtg(Lcom/oneplus/server/zta;Z)Z

    goto/16 :goto_0

    :cond_1
    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1, v0}, Lcom/oneplus/server/zta;->ssp(Lcom/oneplus/server/zta;Z)Z

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0, v0}, Lcom/oneplus/server/zta;->cno(Lcom/oneplus/server/zta;Z)Z

    goto/16 :goto_0

    :cond_2
    const-string p2, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1, v1}, Lcom/oneplus/server/zta;->ssp(Lcom/oneplus/server/zta;Z)Z

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->kth(Lcom/oneplus/server/zta;)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "@minfps@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v2, 0x8

    if-eqz p2, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/oneplus/server/zta;->igw(Lcom/oneplus/server/zta;I)I

    iget-object p1, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->bio(Lcom/oneplus/server/zta;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/oneplus/server/zta;->gck(Lcom/oneplus/server/zta;I)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oneplus/server/zta;->wtn(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_4
    const-string p2, "@maxfps@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/oneplus/server/zta;->ywr(Lcom/oneplus/server/zta;I)I

    iget-object p1, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->dma(Lcom/oneplus/server/zta;)I

    move-result p0

    invoke-static {p2, p0}, Lcom/oneplus/server/zta;->gck(Lcom/oneplus/server/zta;I)D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oneplus/server/zta;->oif(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_5
    const-string p2, "@gap@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/server/zta;->bvj(Lcom/oneplus/server/zta;I)V

    goto/16 :goto_0

    :cond_6
    const-string p2, "@coffe@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x7

    if-eqz p2, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/server/zta;->ibl(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_7
    const-string p2, "@mincoffe@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v3, 0xa

    if-eqz p2, :cond_8

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/server/zta;->ugm(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_8
    const-string p2, "@maxcoffe@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/oneplus/server/zta;->zgw(Lcom/oneplus/server/zta;D)D

    iget-object p1, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p2}, Lcom/oneplus/server/zta;->vdb(Lcom/oneplus/server/zta;)D

    move-result-wide v0

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p2}, Lcom/oneplus/server/zta;->gwm(Lcom/oneplus/server/zta;)D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    iget-object p2, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p2}, Lcom/oneplus/server/zta;->oxb(Lcom/oneplus/server/zta;)D

    move-result-wide v2

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0}, Lcom/oneplus/server/zta;->ear(Lcom/oneplus/server/zta;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/oneplus/server/zta;->obl(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_9
    const-string p2, "@coffeslope@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/server/zta;->obl(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_a
    const-string p2, "@maxDuration@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/16 v3, 0xd

    if-eqz p2, :cond_b

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/server/zta;->cjf(Lcom/oneplus/server/zta;D)D

    goto/16 :goto_0

    :cond_b
    const-string p2, "@minDuration@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/server/zta;->ire(Lcom/oneplus/server/zta;D)D

    goto :goto_0

    :cond_c
    const-string p2, "@delay@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/oneplus/server/zta;->hmo(Lcom/oneplus/server/zta;D)D

    goto :goto_0

    :cond_d
    const-string p2, "@reverse@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/server/zta;->fto(Lcom/oneplus/server/zta;Z)Z

    goto :goto_0

    :cond_e
    const-string p2, "@minv@"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {p0, p2}, Lcom/oneplus/server/zta;->veq(Lcom/oneplus/server/zta;F)F

    const-string p0, "persist.sys.dynamic.minv"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string p2, "v2on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0, v0}, Lcom/oneplus/server/zta;->cgv(Lcom/oneplus/server/zta;Z)Z

    goto :goto_0

    :cond_10
    const-string p2, "v2off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/oneplus/server/zta$sis;->zta:Lcom/oneplus/server/zta;

    invoke-static {p0, v1}, Lcom/oneplus/server/zta;->cgv(Lcom/oneplus/server/zta;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :cond_11
    :goto_0
    return-void
.end method
