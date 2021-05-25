.class Lcom/oneplus/android/server/bluetooth/rtg;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final cjf:Z = true

.field private static final ear:Ljava/lang/String; = "F6X2WLDK2K"

.field private static final fto:I = 0x1

.field private static final hmo:Ljava/lang/String; = "bt_quality_report"

.field private static final ire:Ljava/lang/String; = "bt_iot_device_broadcast"

.field private static final lqr:I = 0x493e0

.field static final obl:Ljava/lang/String; = "OpBluetoothMonitorIotDevice"

.field static final oxb:Z = false


# instance fields
.field private bio:Ljava/lang/String;

.field private bvj:I

.field private cno:I

.field private dma:I

.field private gck:I

.field private gwm:I

.field private ibl:I

.field private igw:I

.field private kth:J

.field private oif:Ljava/lang/String;

.field private qbh:I

.field private rtg:I

.field private sis:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private ssp:J

.field private tsu:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

.field private ugm:I

.field private vdb:Landroid/bluetooth/BluetoothDevice;

.field private wtn:I

.field private you:Lcom/oneplus/android/server/bluetooth/kth;

.field private ywr:I

.field private final zgw:Landroid/os/Handler;

.field private zta:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->rtg:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ssp:J

    const/16 v2, 0xa

    iput v2, p0, Lcom/oneplus/android/server/bluetooth/rtg;->cno:I

    iput-wide v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->kth:J

    new-instance v0, Lcom/oneplus/android/server/bluetooth/rtg$zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/rtg$zta;-><init>(Lcom/oneplus/android/server/bluetooth/rtg;)V

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zgw:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zta:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->bio:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->igw:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->wtn:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->gck:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->dma:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ywr:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->qbh:I

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->oif:Ljava/lang/String;

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->bvj:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ibl:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->gwm:I

    iput v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ugm:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->vdb:Landroid/bluetooth/BluetoothDevice;

    new-instance p1, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    invoke-direct {p1}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->tsu:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->igw:I

    return p0
.end method

.method static synthetic cno(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->vdb:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ywr:I

    return p0
.end method

.method static synthetic gck(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->dma:I

    return p0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->wtn:I

    return p0
.end method

.method static synthetic kth(Lcom/oneplus/android/server/bluetooth/rtg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic oif(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->bvj:I

    return p0
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/bluetooth/rtg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->oif:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->gwm:I

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/bluetooth/rtg;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->bio:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ugm:I

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ibl:I

    return p0
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->gck:I

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/bluetooth/rtg;Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->sis:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p1
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/bluetooth/rtg;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->qbh:I

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/rtg;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->sis:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p0
.end method


# virtual methods
.method public bvj()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->tsu:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->tsu:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    return-void
.end method

.method public gwm(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IIIIIILjava/lang/String;IIII)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zgw:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p2, p0, Lcom/oneplus/android/server/bluetooth/rtg;->bio:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/android/server/bluetooth/rtg;->igw:I

    iput p4, p0, Lcom/oneplus/android/server/bluetooth/rtg;->wtn:I

    iput p5, p0, Lcom/oneplus/android/server/bluetooth/rtg;->gck:I

    iput p6, p0, Lcom/oneplus/android/server/bluetooth/rtg;->dma:I

    iput p7, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ywr:I

    iput p8, p0, Lcom/oneplus/android/server/bluetooth/rtg;->qbh:I

    iput-object p9, p0, Lcom/oneplus/android/server/bluetooth/rtg;->oif:Ljava/lang/String;

    iput p10, p0, Lcom/oneplus/android/server/bluetooth/rtg;->bvj:I

    iput p11, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ibl:I

    iput p12, p0, Lcom/oneplus/android/server/bluetooth/rtg;->gwm:I

    iput p13, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ugm:I

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->vdb:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zgw:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zgw:Landroid/os/Handler;

    const-wide/32 p2, 0x493e0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public ibl(Landroid/bluetooth/BluetoothQualityReport;)V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->you:Lcom/oneplus/android/server/bluetooth/kth;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/bluetooth/kth;->zta(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->sis:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getQualityReportId()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBqrVsLsto()Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getConnStateStr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lsto_conn_state"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getBasebandStats()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "0x%08X"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lsto_bb_state"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getSlotsUsed()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lsto_slot_used"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getCxmDenials()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lsto_cxm_denials"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getTxSkipped()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "lsto_tx_skipped"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsLsto;->getRfLoss()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "lsto_rf_loss"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v2, 0x3

    const-wide/16 v5, 0x7d0

    const-string v7, "OpBluetoothMonitorIotDevice"

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBqrVsA2dpChoppy()Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v8, p0, Lcom/oneplus/android/server/bluetooth/rtg;->rtg:I

    const/16 v9, 0xa

    if-eq v8, v9, :cond_2

    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ssp:J

    sub-long/2addr v8, v10

    cmp-long v8, v8, v5

    if-gtz v8, :cond_3

    const-string p0, "The playing time duration less than 2 seconds, ignore it"

    :goto_0
    invoke-static {v7, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getGlitchCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a2dp_choppy_glitch_c"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getTxCxmDenials()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a2dp_choppy_tx_cxm_denials"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getRxCxmDenials()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a2dp_choppy_rx_cxm_denials"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getAclTxQueueLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "a2dp_choopy_acl_tx_queue_length"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsA2dpChoppy;->getLinkQualityStr()Ljava/lang/String;

    move-result-object v2

    const-string v8, "a2dp_choppy_link_quality"

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBqrVsScoChoppy()Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;

    move-result-object v2

    if-eqz v2, :cond_7

    iget v8, p0, Lcom/oneplus/android/server/bluetooth/rtg;->cno:I

    const/16 v9, 0xc

    if-eq v8, v9, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/oneplus/android/server/bluetooth/rtg;->kth:J

    sub-long/2addr v8, v10

    cmp-long v5, v8, v5

    if-gtz v5, :cond_6

    const-string p0, "The HFP audio oduration less than 2 seconds, ignore it"

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getGlitchCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_glitch_c"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getWindowEsco()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_windows_esco"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getAirFormatStr()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_air_format"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getTxCxmDenials()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_tx_cxm_denials"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getRxCxmDenials()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_rx_cxm_denials"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getTxAbortCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_tx_abort_c"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getLateDispatch()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_late_dispatch"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getMicIntrMiss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_mic_intr_miss"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getLpaIntrMiss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_lpa_intr_miss"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getSprIntrMiss()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_spr_intr_miss"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getPlcFillCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_plc_filled_c"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getPlcDiscardCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_plc_discard_c"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getMissedInstanceCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_instances_miss"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getTxRetransmitSlotCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_tx_retrans_slot_c"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getRxRetransmitSlotCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sco_choppy_rx_retrans_slot_c"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsScoChoppy;->getGoodRxFrameCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "sco_choppy_rx_good_packets"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v2, 0x20

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBqrVsConnectFail()Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrVsConnectFail;->getFailReason()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "conn_fail_reason"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/oneplus/android/server/bluetooth/bio;->wtn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "name"

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/android/server/bluetooth/rtg;->tsu:Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;

    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    if-eqz v5, :cond_a

    invoke-static {v2, v5}, Lcom/oneplus/android/server/OpBluetoothCarkitIdentificationInjector;->isCarkit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v6, "model"

    if-eqz v2, :cond_9

    const-string v2, "CAR"

    goto :goto_1

    :cond_9
    const-string v2, "NONE"

    :goto_1
    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v5, :cond_b

    invoke-static {v5}, Lcom/oneplus/android/server/bluetooth/bio;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "s"

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBluetoothClass()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "0x%X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getLmpVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lmp_ver"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getLmpSubVersion()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lmp_sub_ver"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getManufacturerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "companyId"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-virtual {v5, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3, v2}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_c
    const-string v2, "UNKNOW"

    :goto_2
    const-string v3, "manufacturer"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBqrCommon()Landroid/bluetooth/BluetoothQualityReport$BqrCommon;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "reportId"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getPacketTypeStr()Ljava/lang/String;

    move-result-object v1

    const-string v3, "packet_type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getConnectionRole()Ljava/lang/String;

    move-result-object v1

    const-string v3, "connection_role"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getTxPowerLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tx_pwr_lv"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getRssi()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rssi"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getSnr()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "snr"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getUnusedAfhChannelCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "unused_afh_channel_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getAfhSelectUnidealChannelCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "afh_select_unideal_channel_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getLsto()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "lsto"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getPiconetClock()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "piconet_clock"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getPiconetClock()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getRetransmissionCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "retransmission_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getNoRxCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "no_rx_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getNakCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "nak_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getFlowOffCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flow_off_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getOverflowCount()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "overflow_c"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothQualityReport$BqrCommon;->getUnderflowCount()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "underflow_c"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport;->getBqrVsCommon()Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothQualityReport$BqrVsCommon;->getCalFailedItemCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "cal_failed_item_c"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    const-string v2, "F6X2WLDK2K"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->sis:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->zta:Landroid/content/Context;

    const-string v2, "bt_quality_report"

    invoke-virtual {v1, p0, v2, v0, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string p1, "Check Bluetooth Quality Report Fail"

    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_3
    return-void
.end method

.method public ugm(Lcom/oneplus/android/server/bluetooth/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->you:Lcom/oneplus/android/server/bluetooth/kth;

    return-void
.end method

.method public vdb(I)V
    .locals 2

    iput p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->rtg:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->ssp:J

    return-void
.end method

.method public zgw(I)V
    .locals 2

    iput p1, p0, Lcom/oneplus/android/server/bluetooth/rtg;->cno:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/android/server/bluetooth/rtg;->kth:J

    return-void
.end method
