.class public Lcom/android/server/am/OnePlusBGController$oif;
.super Lcom/android/internal/os/BatterySipper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oif"
.end annotation


# instance fields
.field public bio:D

.field public bvj:D

.field public cjf:D

.field public cno:D

.field public dma:D

.field public ear:D

.field public fto:D

.field public gck:D

.field public gwm:D

.field public hmo:D

.field public ibl:D

.field public igw:D

.field public ire:D

.field public kth:D

.field public obl:D

.field public oif:J

.field public oxb:D

.field public qbh:D

.field public rtg:D

.field public sis:D

.field public ssp:D

.field public tsu:D

.field public ugm:D

.field public vdb:D

.field public wtn:D

.field public you:J

.field public ywr:D

.field public zgw:D

.field public zta:Lcom/android/server/am/OnePlusBGController$MySipperType;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper;JI)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUidTotalRunningTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->you:J

    new-instance p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p3

    invoke-direct {p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    :cond_0
    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->tsu:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->rtg:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ssp:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->cno:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->kth:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->bio:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->igw:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->wtn:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->gck:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->dma:D

    iget-wide p2, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ywr:D

    iget-wide p1, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$oif;->qbh:D

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController$oif;->rtg()D

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$MySipperType;)V
    .locals 4

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$oif;->zta:Lcom/android/server/am/OnePlusBGController$MySipperType;

    return-void
.end method

.method private rtg()D
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->tsu:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->rtg:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ssp:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->cno:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->kth:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->bio:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->igw:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->wtn:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->gck:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->dma:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ywr:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->qbh:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    return-wide v0
.end method

.method private tsu()D
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ibl:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->gwm:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ugm:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->vdb:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->zgw:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->obl:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->oxb:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->cjf:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ear:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ire:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->hmo:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->fto:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->bvj:D

    return-wide v0
.end method


# virtual methods
.method public sis()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->you:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->tsu:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->rtg:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ssp:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->cno:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->kth:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->bio:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->igw:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->wtn:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->gck:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->dma:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ywr:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->qbh:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  AccT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->zta:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") |Run="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->oif:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->f0(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Wifi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->gwm:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Gps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ugm:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Cpu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->vdb:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Sen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->zgw:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Mob="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->obl:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Wak="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->oxb:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Flh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ear:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Ble="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->ire:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Cam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->cjf:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |Total="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->bvj:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->bvj:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oif;->oif:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ibl:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->gwm:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ugm:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->vdb:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->zgw:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->obl:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->oxb:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->cjf:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ear:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ire:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->hmo:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->fto:D

    return-void
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$qbh;Lcom/android/server/am/OnePlusBGController$oif;)V
    .locals 6

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->oif:J

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->you:J

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->tsu:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->oif:J

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ibl:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->tsu:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->ssp:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ibl:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->gwm:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->rtg:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->cno:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->gwm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ugm:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->ssp:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->kth:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ugm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->vdb:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->cno:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->bio:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->vdb:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->zgw:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->kth:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->igw:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->zgw:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->obl:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->bio:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->wtn:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->obl:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->oxb:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->igw:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->gck:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->oxb:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->cjf:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->wtn:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->dma:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->cjf:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ear:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->gck:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->ywr:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ear:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ire:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->dma:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->qbh:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->ire:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->hmo:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->ywr:D

    iget-wide v4, p1, Lcom/android/server/am/OnePlusBGController$qbh;->oif:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->hmo:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->fto:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusBGController$oif;->qbh:D

    iget-wide p1, p1, Lcom/android/server/am/OnePlusBGController$qbh;->bvj:D

    sub-double/2addr v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$oif;->fto:D

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController$oif;->tsu()D

    return-void
.end method
