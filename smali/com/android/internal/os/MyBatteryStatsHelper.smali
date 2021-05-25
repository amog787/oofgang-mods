.class public Lcom/android/internal/os/MyBatteryStatsHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field public static final INVALID_ERROR:I = -0x378

.field public static final INVALID_INIT:I = -0x6f

.field public static final INVALID_TORAL_POWER:I = -0x3e7

.field private static final TAG:Ljava/lang/String; = "MyBatteryStatsHelper"

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtimeUs:J

.field mBatteryTimeRemainingUs:J

.field mBatteryUptimeUs:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemainingUs:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtimeUs:J

.field mRawUptimeUs:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mServicepackageArray:[Ljava/lang/String;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mSystemPackageArray:[Ljava/lang/String;

.field private mTotalPower:D

.field mTypeBatteryRealtimeUs:J

.field mTypeBatteryUptimeUs:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/MyBatteryStatsHelper;->DEBUG_ONEPLUS:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-static {p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsPeriod:J

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxPower:D

    iput-wide v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxRealPower:D

    iput-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    iput-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCollectBatteryBroadcast:Z

    iput-boolean p3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiOnly:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107001b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    const p2, 0x107001a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    return-void
.end method

.method private addAmbientDisplayUsage()V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "ambient.on"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v2, v6

    mul-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v8, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/MyBatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addBluetoothUsage()V
    .locals 11

    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v5, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v7, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v9

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4

    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIdleUsage()V
    .locals 12

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    iget-object v4, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.suspend"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryUptimeUs:J

    div-long/2addr v4, v2

    long-to-double v4, v4

    iget-object v6, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "cpu.idle"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v0, v4

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double v10, v0, v4

    const-wide/16 v0, 0x0

    cmpl-double v0, v10, v0

    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    div-long v8, v0, v2

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/os/MyBatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addMemoryUsage()V
    .locals 11

    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v5, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v7, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v9

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v6, v0, v2

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v2, v6

    mul-double/2addr v0, v2

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v8, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/MyBatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 11

    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v5, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v7, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v8}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v9

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addScreenUsage()V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    long-to-double v1, v5

    iget-object v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v8, "screen.on"

    invoke-virtual {v7, v8}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v1, v7

    const-wide/16 v7, 0x0

    add-double/2addr v1, v7

    iget-object v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "screen.full"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    const/4 v11, 0x0

    :goto_0
    const/4 v12, 0x5

    if-ge v11, v12, :cond_0

    int-to-float v12, v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v9

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double/2addr v12, v14

    iget-object v14, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v14, v11, v7, v8, v15}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v7

    div-long/2addr v7, v3

    long-to-double v7, v7

    mul-double/2addr v12, v7

    add-double/2addr v1, v12

    add-int/lit8 v11, v11, 0x1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_0
    const-wide v3, 0x414b774000000000L    # 3600000.0

    div-double v7, v1, v3

    const-wide/16 v1, 0x0

    cmpl-double v1, v7, v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, p0

    move-wide v2, v5

    move-wide v4, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/MyBatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput v1, v2, Lcom/android/internal/os/BatterySipper;->userId:I

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v3, "User"

    invoke-direct {p0, v2, v1, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addWiFiUsage()V
    .locals 11

    new-instance v8, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    invoke-direct {v8, v0, v1, v9, v10}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v2, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v5, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v7, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v0, v8, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v9

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge p0, p3, :cond_0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p1, p3}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "bluetooth.controller.idle"

    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const-string p0, "bluetooth.controller.rx"

    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const-string p0, "bluetooth.controller.tx"

    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide p0

    cmpl-double p0, p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "wifi.controller.idle"

    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const-string p0, "wifi.controller.rx"

    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    cmpl-double p0, v0, v2

    if-eqz p0, :cond_0

    const-string p0, "wifi.controller.tx"

    invoke-virtual {p1, p0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide p0

    cmpl-double p0, p0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private genSingleAppUsage(I)Lcom/android/internal/os/BatterySipper;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "===processSingleAppUsage==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsPeriod:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move/from16 v7, p1

    if-ne v7, v6, :cond_1

    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v14, 0x0

    invoke-direct {v1, v2, v5, v14, v15}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v7, v1

    move-object v8, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v6

    sget-boolean v2, Lcom/android/internal/os/MyBatteryStatsHelper;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    cmpg-double v2, v6, v14

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] mRawRealtimeUs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mRawUptimeUs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mStatsType="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v6, v7}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "[BGC] UID %d userId %d: total power=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 4

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_0

    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception p0

    :try_start_6
    sget-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to read statistics stream"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    sget-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "RemoteException:"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    new-instance p0, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    return-object p0
.end method

.method private load()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide v0, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.8f"

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.7f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.6f"

    goto :goto_0

    :cond_3
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.5f"

    goto :goto_0

    :cond_4
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.4f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.3f"

    goto :goto_0

    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_7

    const-string v0, "%.2f"

    goto :goto_0

    :cond_7
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    const-string v0, "%.1f"

    goto :goto_0

    :cond_8
    const-string v0, "%.0f"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-wide v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    iput-wide v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsPeriod:J

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v5}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    :goto_1
    if-ge v3, v6, :cond_7

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid;

    new-instance v15, Lcom/android/internal/os/BatterySipper;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v13, 0x0

    invoke-direct {v15, v8, v7, v13, v14}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v16, v5

    iget v5, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-wide/from16 v17, v9

    move-object v9, v15

    move-object v10, v7

    move-wide/from16 v19, v13

    move-wide/from16 v13, v17

    move-object/from16 v17, v15

    move v15, v5

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object/from16 v9, v17

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v8 .. v15}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v8

    cmpl-double v5, v8, v19

    if-nez v5, :cond_1

    invoke-virtual {v7}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_6

    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x3f2

    if-ne v5, v8, :cond_2

    iget-object v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v8, v17

    :goto_2
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object/from16 v8, v17

    const/16 v9, 0x3ea

    if-ne v5, v9, :cond_3

    iget-object v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    goto :goto_2

    :cond_3
    if-nez v2, :cond_5

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_5

    iget-object v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v10, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    goto :goto_2

    :goto_3
    if-nez v5, :cond_6

    move-object v4, v8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v5, v16

    goto/16 :goto_1

    :cond_7
    if-eqz v4, :cond_8

    iget-object v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v10, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v12, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v14, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v8, v4

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_8
    return-void
.end method

.method private processMiscUsage()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addUserUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addPhoneUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addScreenUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addAmbientDisplayUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addWiFiUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addBluetoothUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addMemoryUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addIdleUsage()V

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->addRadioUsage()V

    :cond_0
    return-void
.end method

.method private processSingleAppUsage(I)D
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "===processSingleAppUsage==="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsPeriod:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move/from16 v7, p1

    if-ne v7, v6, :cond_1

    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v14, 0x0

    invoke-direct {v1, v2, v5, v14, v15}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v7, v1

    move-object v8, v5

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iget v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v6

    sget-boolean v2, Lcom/android/internal/os/MyBatteryStatsHelper;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    cmpg-double v2, v6, v14

    if-gez v2, :cond_0

    sget-object v2, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BGC] mRawRealtimeUs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mRawUptimeUs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", mStatsType="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    invoke-static {v6, v7}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "[BGC] UID %d userId %d: total power=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-wide v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    const-wide v0, -0x3f70c80000000000L    # -999.0

    return-wide v0
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array p1, p1, [B

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_1

    return-object p1

    :cond_1
    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v2

    array-length v3, p1

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_0

    add-int/2addr v2, v1

    new-array v2, v2, [B

    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 4

    sget-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryStats;

    if-eqz p1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-object p1

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    array-length v2, p0

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object p0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close FileInputStream"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p0

    :catchall_0
    move-exception p0

    move-object p1, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_5
    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to read history to file"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_1

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_3
    move-exception p0

    :try_start_7
    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to close FileInputStream"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-string p0, "batterystats"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz p1, :cond_2

    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_4
    move-exception p1

    :try_start_9
    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close FileInputStream"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_4
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public convertMsToUs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    return-wide p1
.end method

.method public convertUsToMs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_0
    const-string p1, "batterystats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    new-instance p1, Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method public genSingleBatterySipper(II)Lcom/android/internal/os/BatterySipper;
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_1
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_2
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_3
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez p1, :cond_4

    new-instance p1, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    :cond_4
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {p1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    if-eq p1, v0, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/internal/os/WifiPowerEstimator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iput-boolean p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    :cond_7
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {p1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    if-eq p1, v0, :cond_9

    :cond_8
    new-instance v0, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iput-boolean p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    :cond_9
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_a

    new-instance p1, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget v6, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_a
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_b

    new-instance p1, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_b
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_c

    new-instance p1, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_c
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_d

    new-instance p1, Lcom/android/internal/os/MediaPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/MediaPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_d
    invoke-direct {p0, p2}, Lcom/android/internal/os/MyBatteryStatsHelper;->genSingleAppUsage(I)Lcom/android/internal/os/BatterySipper;

    move-result-object p0

    return-object p0
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->load()V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object p0
.end method

.method public getComputedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object p0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object p0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->convertMsToUs(J)J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const-wide/16 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v7, v3, v4

    invoke-virtual {p1, v7, v0, v1, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide p1

    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/os/MyBatteryStatsHelper;->convertUsToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->load()V

    :cond_0
    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object p0
.end method

.method public getStatsPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    return p0
.end method

.method public getTotalPower()D
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object p0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .locals 6

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v2, p1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    iget-object v5, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v0
.end method

.method public refreshSingleStats(II)D
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    const-wide p0, -0x3f74400000000000L    # -888.0

    return-wide p0

    :cond_0
    iput p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_1
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_2
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_3
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez p1, :cond_4

    new-instance p1, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    :cond_4
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {p1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    if-eq p1, v0, :cond_7

    :cond_5
    if-eqz p1, :cond_6

    new-instance v0, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/android/internal/os/WifiPowerEstimator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iput-boolean p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    :cond_7
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {p1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result p1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    if-eq p1, v0, :cond_9

    :cond_8
    new-instance v0, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iput-boolean p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    :cond_9
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_a

    new-instance p1, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget v6, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_a
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_b

    new-instance p1, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_b
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_c

    new-instance p1, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_c
    iget-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez p1, :cond_d

    new-instance p1, Lcom/android/internal/os/MediaPowerCalculator;

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {p1, v0}, Lcom/android/internal/os/MediaPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_d
    invoke-direct {p0, p2}, Lcom/android/internal/os/MyBatteryStatsHelper;->processSingleAppUsage(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public refreshStats(II)V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v7, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v9, v0, v2

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/os/MyBatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    if-eqz v8, :cond_0

    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshStats called for statsType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but only STATS_SINCE_CHARGED is supported. Using STATS_SINCE_CHARGED instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    const-wide/16 v13, 0x0

    iput-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxPower:D

    iput-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxRealPower:D

    iput-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mComputedPower:D

    iput-wide v13, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTotalPower:D

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/internal/os/CpuPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_2
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_3

    new-instance v1, Lcom/android/internal/os/MemoryPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_3
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/internal/os/WakelockPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_4
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    :cond_5
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v2, :cond_6

    iget-boolean v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    if-eq v1, v2, :cond_8

    :cond_6
    if-eqz v1, :cond_7

    new-instance v2, Lcom/android/internal/os/WifiPowerCalculator;

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto :goto_0

    :cond_7
    new-instance v2, Lcom/android/internal/os/WifiPowerEstimator;

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_0
    iput-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iput-boolean v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasWifiPowerReporting:Z

    :cond_8
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v1

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-eqz v2, :cond_9

    iget-boolean v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    if-eq v1, v2, :cond_a

    :cond_9
    new-instance v2, Lcom/android/internal/os/BluetoothPowerCalculator;

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iput-boolean v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    :cond_a
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    new-instance v15, Lcom/android/internal/os/SensorPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/hardware/SensorManager;

    iget-object v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object v1, v15

    move-wide/from16 v5, p3

    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;Landroid/os/BatteryStats;JI)V

    iput-object v15, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v15}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_b

    new-instance v1, Lcom/android/internal/os/CameraPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_b
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_c

    new-instance v1, Lcom/android/internal/os/FlashlightPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_c
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    if-nez v1, :cond_d

    new-instance v1, Lcom/android/internal/os/MediaPowerCalculator;

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, v2}, Lcom/android/internal/os/MediaPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    iput-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_d
    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMediaPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    invoke-virtual {v1}, Lcom/android/internal/os/PowerCalculator;->reset()V

    iput v8, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    iput-wide v11, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawUptimeUs:J

    iput-wide v9, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mRawRealtimeUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v11, v12}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryUptimeUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryRealtimeUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v11, v12, v2}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryUptimeUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStatsType:I

    invoke-virtual {v1, v9, v10, v2}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryTimeRemainingUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1, v9, v10}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mChargeTimeRemainingUs:J

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v3}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMinDrainedPower:D

    iget-object v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v1}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v1

    int-to-double v1, v1

    iget-object v5, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v5

    mul-double/2addr v1, v5

    div-double/2addr v1, v3

    iput-wide v1, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxDrainedPower:D

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v4, v3, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    cmpl-double v4, v4, v13

    if-eqz v4, :cond_e

    iget-object v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_f
    move v2, v1

    :goto_2
    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_12

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move v4, v1

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    cmpl-double v6, v6, v13

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_12
    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    new-instance v3, Lcom/android/internal/os/MyBatteryStatsHelper$zta;

    invoke-direct {v3, v0}, Lcom/android/internal/os/MyBatteryStatsHelper$zta;-><init>(Lcom/android/internal/os/MyBatteryStatsHelper;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->processMiscUsage()V

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxPower:D

    iput-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxRealPower:D

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_13

    iget-wide v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mComputedPower:D

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v4, v6

    iput-wide v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mComputedPower:D

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_13
    iget-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mComputedPower:D

    iput-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTotalPower:D

    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    iget-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMinDrainedPower:D

    iget-wide v4, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mComputedPower:D

    cmpl-double v6, v2, v4

    const/4 v7, 0x0

    if-lez v6, :cond_15

    sub-double v4, v2, v4

    iput-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mTotalPower:D

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_14

    :goto_5
    add-int/lit8 v3, v3, 0x1

    neg-int v3, v3

    :cond_14
    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v6, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxPower:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxPower:D

    goto :goto_6

    :cond_15
    iget-wide v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mMaxDrainedPower:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_16

    sub-double/2addr v4, v2

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v3, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v3, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_14

    goto :goto_5

    :cond_16
    :goto_6
    iget-object v2, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    sub-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v6, v6, v8

    if-lez v6, :cond_18

    iget-object v6, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_7
    if-ge v1, v6, :cond_18

    iget-object v7, v0, Lcom/android/internal/os/MyBatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatterySipper;

    iget-boolean v8, v7, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-nez v8, :cond_17

    iget-wide v8, v7, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v10, v7, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    mul-double/2addr v8, v2

    iput-wide v8, v7, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_18
    return-void
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_0

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v1, v5

    :cond_0
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_1

    move-object v3, v4

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    return-wide v1
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public setServicePackageArray([Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    return-void
.end method

.method public setSystemPackageArray([Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    return-void
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v8, v4

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/os/BatterySipper;

    iget-object v10, v10, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v11, p0

    if-eqz v10, :cond_0

    invoke-virtual {v11, v10, v6}, Lcom/android/internal/os/MyBatteryStatsHelper;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v12

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    add-long/2addr v8, v12

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const-wide/32 v10, 0x927c0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_2

    iget-wide v10, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v6, v1, :cond_2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-virtual {v2, v7, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v12

    long-to-double v12, v12

    mul-double/2addr v12, v10

    long-to-double v14, v8

    div-double/2addr v12, v14

    iput-wide v12, v3, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public storeState()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iget-object p0, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object p0, Lcom/android/internal/os/MyBatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/internal/os/MyBatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/MyBatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_4
    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to close FileOutputStream"

    :goto_0
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_5
    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to write history to file"

    invoke-static {p1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_0

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_3
    move-exception p0

    :try_start_7
    sget-object p1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to close FileOutputStream"

    goto :goto_0

    :cond_0
    :goto_2
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return-void

    :goto_3
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_4
    move-exception p1

    :try_start_9
    sget-object v1, Lcom/android/internal/os/MyBatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "Unable to close FileOutputStream"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_4
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0
.end method
