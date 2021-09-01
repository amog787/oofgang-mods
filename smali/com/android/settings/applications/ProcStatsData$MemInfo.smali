.class public Lcom/android/settings/applications/ProcStatsData$MemInfo;
.super Ljava/lang/Object;
.source "ProcStatsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcStatsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemInfo"
.end annotation


# instance fields
.field baseCacheRam:J

.field freeWeight:D

.field mMemStateWeights:[D

.field memTotalTime:J

.field public realFreeRam:D

.field public realTotalRam:D

.field public realUsedRam:D

.field totalRam:D

.field totalScale:D

.field usedWeight:D

.field weightToRam:D


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 10

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [D

    .line 368
    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    .line 382
    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->memTotalTime:J

    .line 383
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    .line 385
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    long-to-double p2, p3

    div-double/2addr v0, p2

    .line 386
    iget-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    mul-double/2addr v4, v2

    div-double/2addr v4, p2

    add-double v6, v0, v4

    .line 387
    iput-wide v6, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalRam:D

    .line 388
    iget-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    div-double/2addr v8, v6

    iput-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->totalScale:D

    div-double p2, v8, p2

    mul-double/2addr p2, v2

    .line 389
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    mul-double/2addr v0, v8

    .line 391
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    mul-double/2addr v8, v4

    .line 392
    iput-wide v8, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 406
    new-instance p2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string p3, "activity"

    .line 407
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 409
    iget-wide p1, p2, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double p3, p1

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    cmpl-double p3, p3, v0

    if-ltz p3, :cond_0

    .line 410
    iput-wide v4, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    const-wide/16 p1, 0x0

    .line 411
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    double-to-long p1, p1

    .line 412
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    goto :goto_0

    .line 414
    :cond_0
    iget-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    long-to-double v2, p1

    add-double/2addr p3, v2

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    long-to-double p3, p1

    sub-double/2addr v0, p3

    .line 415
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 416
    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->baseCacheRam:J

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;JLcom/android/settings/applications/ProcStatsData$1;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/applications/ProcStatsData$MemInfo;-><init>(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V

    return-void
.end method

.method private calculateWeightInfo(Landroid/content/Context;Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;J)V
    .locals 2

    .line 422
    new-instance p1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 423
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 424
    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide p3

    long-to-double p3, p3

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 425
    iget-wide p3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    iget-wide v0, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    .line 426
    iget-wide p3, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    iget-wide v0, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    .line 427
    iget-boolean p1, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->hasSwappedOutPss:Z

    if-nez p1, :cond_0

    .line 428
    iget-wide v0, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr p3, v0

    iput-wide p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 p3, 0xe

    if-ge p1, p3, :cond_3

    const/4 p3, 0x6

    if-ne p1, p3, :cond_1

    .line 433
    iget-object p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    const-wide/16 v0, 0x0

    aput-wide v0, p3, p1

    goto :goto_1

    .line 435
    :cond_1
    iget-object p3, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->mMemStateWeights:[D

    iget-object p4, p2, Lcom/android/internal/app/procstats/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v0, p4, p1

    aput-wide v0, p3, p1

    const/16 p3, 0x9

    if-lt p1, p3, :cond_2

    .line 437
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    aget-wide p3, p4, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->freeWeight:D

    goto :goto_1

    .line 439
    :cond_2
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    aget-wide p3, p4, p1

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->usedWeight:D

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getWeightToRam()D
    .locals 2

    .line 377
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsData$MemInfo;->weightToRam:D

    return-wide v0
.end method
