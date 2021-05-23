.class public final Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;
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
    name = "ire"
.end annotation


# instance fields
.field private cno:J

.field final synthetic kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field private rtg:F

.field private sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

.field private ssp:F

.field private tsu:I

.field private you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

.field private zta:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;IFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->tsu:I

    iput p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->rtg:F

    iput p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->ssp:F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;IFFJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->tsu:I

    iput p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->rtg:F

    iput p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->ssp:F

    iput-wide p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->cno:J

    invoke-static {p1, p9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    if-ne v0, v1, :cond_18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, -0x1

    invoke-virtual {v5, v9, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    mul-long/2addr v3, v7

    invoke-virtual {v2, v3, v4, v9}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v3

    div-long/2addr v3, v7

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v3, v4}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time on battery of uptime : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->updateKernelWakelocks()V

    :cond_2
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->tsu:[I

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const-string v6, "[NoSignal] Keep starting"

    const/16 v10, 0x1f4

    const-string v11, "OPSA"

    const-string v12, "stats == null"

    const-string v13, " ms"

    const/4 v14, 0x1

    if-eq v5, v14, :cond_d

    const/4 v14, 0x2

    if-eq v5, v14, :cond_4

    const/4 v2, 0x3

    if-eq v5, v2, :cond_3

    goto/16 :goto_5

    :cond_3
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->veq(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needGenBatteryOutlier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[End] Calculate & Judge in "

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_4
    const-string v5, "======END======"

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-wide v3, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:J

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->rtg()V

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NoSignal] mRawNoSignalOfEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->tsu()V

    :cond_5
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->tsu:I

    invoke-static {v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->rtg:F

    invoke-static {v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->ssp:F

    invoke-static {v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->cno:J

    invoke-static {v3, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;J)J

    const-string v3, "End"

    if-eqz v2, :cond_7

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    sget-boolean v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-static {v4, v3, v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_6
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    mul-long/2addr v5, v7

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v4, v2, v5, v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:Ljava/util/Map;

    sget-boolean v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    const-string v6, "End-WL"

    invoke-static {v4, v6, v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:Ljava/util/Map;

    invoke-virtual {v4, v3, v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_7
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    invoke-static {v5, v6}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/List;

    if-eqz v2, :cond_8

    move v4, v9

    :goto_1
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v4, v5, :cond_9

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    mul-long/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v7

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v10, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_9
    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/List;

    const-string v5, "End-Signal"

    invoke-static {v2, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    :cond_a
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n1:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1:Ljava/lang/String;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/Map;

    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v2, :cond_c

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/Map;

    invoke-static {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[End] SnapShot in "

    goto/16 :goto_0

    :cond_d
    const-string v5, "======START======"

    invoke-static {v11, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    invoke-static {v5, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;)Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iput-wide v10, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iput-wide v3, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:J

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->rtg()V

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NoSignal] mRawNoSignalOfStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->tsu()V

    :cond_e
    const-string v3, "Start"

    if-eqz v2, :cond_10

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/List;

    sget-boolean v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/List;

    invoke-static {v4, v3, v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_f
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    mul-long/2addr v5, v7

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v4, v2, v5, v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:Ljava/util/Map;

    sget-boolean v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    const-string v6, "Start-WL"

    invoke-static {v4, v6, v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:Ljava/util/Map;

    invoke-virtual {v4, v3, v5, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C(Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_2

    :cond_10
    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_11
    :goto_2
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    invoke-static {v5, v6}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/List;

    if-eqz v2, :cond_12

    move v4, v9

    :goto_3
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v4, v5, :cond_13

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    mul-long/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    div-long/2addr v5, v7

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v10, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_12
    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_13
    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v4, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/List;

    const-string v5, "Start-Signal"

    invoke-static {v2, v5, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    :cond_14
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n1:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1:Ljava/lang/String;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v2, :cond_16

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    invoke-static {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[START] SnapShot in "

    goto/16 :goto_0

    :cond_17
    const-string p0, "mBatteryStatsService == null"

    :goto_4
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_18
    :goto_5
    return-void
.end method
