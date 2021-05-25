.class public final Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "hmo"
.end annotation


# instance fields
.field final synthetic bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field private cno:F

.field private kth:J

.field private rtg:I

.field private sis:I

.field private ssp:F

.field private tsu:I

.field private you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

.field private zta:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IIIFFJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iput p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->sis:I

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->tsu:I

    iput p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->rtg:I

    iput p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->ssp:F

    iput p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->cno:F

    iput-wide p8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->kth:J

    invoke-static {p1, p10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    if-eq v6, v7, :cond_0

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v6, v7, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->flushExternal()V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v6, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v7, -0x1

    invoke-virtual {v6, v10, v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    mul-long/2addr v4, v8

    invoke-virtual {v3, v4, v5, v10}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v8

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6, v4, v5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Time on battery of uptime : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->updateKernelWakelocks()V

    :cond_2
    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const-string v7, "[DeepSleep] Keep starting"

    const-string v11, "[NoSignal] Keep starting"

    const/16 v12, 0x1f4

    const-string v13, "OPSA"

    const/4 v14, 0x3

    const/4 v15, 0x1

    const-string v8, " ms"

    if-eq v6, v15, :cond_b

    const/4 v9, 0x2

    if-eq v6, v9, :cond_4

    if-eq v6, v14, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v3, "======CALCULATE======"

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needGenBatteryOutlier : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[End] Calculate & Judge in "

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    const-string v6, "======END======"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-wide v4, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NoSignal] mRawNoSignalOfEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_5
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DeepSleep] mDeepSleepOfEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_6
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->sis:I

    invoke-static {v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->tsu:I

    invoke-static {v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->veq(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->rtg:I

    invoke-static {v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->ssp:F

    invoke-static {v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vju(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->cno:F

    invoke-static {v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->kth:J

    invoke-static {v4, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les(Lcom/android/server/power/OnePlusStandbyAnalyzer;J)J

    const-string v4, "End"

    if-eqz v3, :cond_8

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Ljava/util/List;

    sget-boolean v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Ljava/util/List;

    invoke-static {v5, v4, v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_7
    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v6, v11

    iget-object v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v5, v3, v6, v7, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/Map;

    const-string v6, "End-WL"

    invoke-static {v3, v6, v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_8
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    invoke-static {v5, v6}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b2:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d2:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d2:Ljava/lang/String;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l2:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_a

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/Map;

    invoke-static {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[End] SnapShot in "

    goto/16 :goto_0

    :cond_b
    const-string v6, "======START======"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/util/List;)Ljava/util/List;

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v9

    invoke-static {v6, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-wide v4, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:J

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NoSignal] mRawNoSignalOfStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_c
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AOD] mAODOfStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)I

    move-result v4

    if-ne v4, v14, :cond_d

    const-string v4, "[AOD] Keep starting"

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_d
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DeepSleep] mDeepSleepOfStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_e
    const-string v4, "Start"

    if-eqz v3, :cond_10

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Ljava/util/List;

    sget-boolean v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v5, :cond_f

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Ljava/util/List;

    invoke-static {v5, v4, v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_f
    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v6, v11

    iget-object v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v5, v3, v6, v7, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Ljava/util/Map;

    const-string v6, "Start-WL"

    invoke-static {v3, v6, v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_1

    :cond_10
    const-string v3, "stats == null"

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_11
    :goto_1
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    invoke-static {v5, v6}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:Ljava/util/Map;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b2:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d2:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d2:Ljava/lang/String;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l2:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/Map;

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v3, :cond_13

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/Map;

    invoke-static {v0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[START] SnapShot in "

    goto/16 :goto_0

    :cond_14
    const-string v0, "mBatteryStatsService == null"

    :goto_2
    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
