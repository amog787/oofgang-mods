.class public final Lcom/android/server/am/OnePlusBGController$gwm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "gwm"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/am/OnePlusBGController;

.field private you:Z

.field private zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$gwm;->you:Z

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$gwm;->you:Z

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    iput-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$gwm;->you:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->wtn(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/OnePlusBGController$you;->kth:[I

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$gwm;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_9

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->I(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->L(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_0

    :cond_1
    const-string v2, "No round-flush, so skip calculating..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0, v4}, Lcom/android/server/am/OnePlusBGController;->J(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[End] Calculate & Judge in "

    goto/16 :goto_4

    :cond_2
    const-string v2, "======REPORT_SHOT======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$SnapshotType;->you:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    if-ne v2, v5, :cond_4

    const-string v2, "======ONESHOT======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->flushExternal()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->wtn(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    monitor-enter v2

    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->gwm(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->gwm(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v4, v8}, Lcom/android/internal/os/MyBatteryStatsHelper;->refreshStats(II)V

    if-eqz v2, :cond_6

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->gwm(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/os/MyBatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/android/server/am/OnePlusBGController;->qeg:Ljava/util/List;

    move v8, v4

    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    iget-object v9, v9, Lcom/android/server/am/OnePlusBGController;->qeg:Ljava/util/List;

    new-instance v10, Lcom/android/server/am/OnePlusBGController$oif;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/os/BatterySipper;

    invoke-direct {v10, v11, v5, v6, v4}, Lcom/android/server/am/OnePlusBGController$oif;-><init>(Lcom/android/internal/os/BatterySipper;JI)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMySippersOfOneShot size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->qeg:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v5, "stats == null"

    goto :goto_2

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v2, Lcom/android/server/am/OnePlusBGController;->qeg:Ljava/util/List;

    iget-object v2, v2, Lcom/android/server/am/OnePlusBGController;->o:Ljava/util/Comparator;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v2, Lcom/android/server/am/OnePlusBGController;->qeg:Ljava/util/List;

    invoke-static {v2, v5}, Lcom/android/server/am/OnePlusBGController;->H(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    sget-boolean v2, Lcom/android/server/am/OnePlusBGController;->E:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v2, Lcom/android/server/am/OnePlusBGController;->qeg:Ljava/util/List;

    const-string v6, "ONESHOT"

    invoke-static {v2, v6, v5, v4}, Lcom/android/server/am/OnePlusBGController;->rtg(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->J(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[START] SnapShot in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    sget-object v1, Lcom/android/server/am/OnePlusBGController$SnapshotType;->tsu:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->oxb(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->you:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->K(Lcom/android/server/am/OnePlusBGController;ZZ)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->kth(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_6

    :cond_8
    sget-object v1, Lcom/android/server/am/OnePlusBGController$SnapshotType;->you:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    if-ne v0, v1, :cond_c

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    sget-object v0, Lcom/android/server/am/OnePlusBGController$SnapshotType;->sis:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->Y0(Lcom/android/server/am/OnePlusBGController$SnapshotType;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    const-string v2, "======INIT_OBSERVE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-array v2, v3, [I

    const/16 v3, 0x75

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->E(Lcom/android/server/am/OnePlusBGController;)V

    :cond_a
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$gwm;->sis:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->F(Lcom/android/server/am/OnePlusBGController;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[START] Init-Observing in "

    :goto_4
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_b
    const-string p0, "mBatteryStatsService == null"

    :goto_5
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method
