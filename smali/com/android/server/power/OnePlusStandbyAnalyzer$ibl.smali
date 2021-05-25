.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;
.super Lcom/android/internal/os/BatterySipper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ibl"
.end annotation


# instance fields
.field public zta:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper;)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;->zta:I

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    :cond_0
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object p1, p0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_1
    return-void
.end method
