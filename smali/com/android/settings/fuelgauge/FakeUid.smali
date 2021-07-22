.class public Lcom/android/settings/fuelgauge/FakeUid;
.super Landroid/os/BatteryStats$Uid;
.source "FakeUid.java"


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 35
    iput p1, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return-void
.end method


# virtual methods
.method public getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCpuActiveTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCpuClusterTimes()[J
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCpuFreqTimes(I)[J
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCpuFreqTimes(II)[J
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeferredJobsCheckinLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method

.method public getDeferredJobsLineLocked(Ljava/lang/StringBuilder;I)V
    .locals 0

    return-void
.end method

.method public getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getJobCompletionStats()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMulticastWakelockStats()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessStateTime(IJI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenOffCpuFreqTimes(I)[J
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getScreenOffCpuFreqTimes(II)[J
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getUid()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/settings/fuelgauge/FakeUid;->mUid:I

    return p0
.end method

.method public getUserActivityCount(II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiRunningTime(JI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanActualTime(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanBackgroundCount(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiScanBackgroundTime(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanBackgroundTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWifiScanCount(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getWifiScanTime(JI)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getWifiScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasNetworkActivity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasUserActivity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 0

    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 0

    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 0

    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 0

    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 0

    return-void
.end method
