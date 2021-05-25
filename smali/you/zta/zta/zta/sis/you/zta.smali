.class public Lyou/zta/zta/zta/sis/you/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/am/highpower/IHighPowerDetector;


# static fields
.field private static final rtg:Ljava/lang/String; = "HighPowerDetector"

.field private static final sis:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final tsu:Z

.field private static final you:Z = true


# instance fields
.field private zta:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.ohpd.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lyou/zta/zta/zta/sis/you/zta;->tsu:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-void
.end method

.method private zta()Z
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public beginCpuStatistics()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr()V

    :cond_0
    return-void
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->veq()V

    :cond_0
    return-void
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->p(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V

    :cond_0
    return-void
.end method

.method public dumpBGCStats(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->s(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    :cond_0
    return-void
.end method

.method public dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->t(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public enableAggressive(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->x(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V

    :cond_0
    return-void
.end method

.method public finishCpuStatistics()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->y()V

    :cond_0
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->A()V

    :cond_0
    return-void
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->E()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getDeviceTemp()I
    .locals 0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->G()I

    move-result p0

    return p0
.end method

.method public getResult(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->K(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    :cond_0
    return-void
.end method

.method public informBGCDailyReporting(Z)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->T(Z)V

    :cond_0
    return-void
.end method

.method public informBatteryStatReset()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->U()V

    :cond_0
    return-void
.end method

.method public informPkgRemoved(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->V(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public initInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x52

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lyou/zta/zta/zta/sis/you/zta;->tsu:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->I(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object p1

    iput-object p1, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    :cond_0
    return-void
.end method

.method public postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->G0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public removeUidStats(I)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->J0(I)V

    :cond_0
    return-void
.end method

.method public resetClean(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->K0(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public shellCommand(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->R0(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startMonitor()V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->V0()V

    :cond_0
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->W0(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->f1(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lyou/zta/zta/zta/sis/you/zta;->zta()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyou/zta/zta/zta/sis/you/zta;->zta:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->g1(Ljava/util/HashSet;)V

    :cond_0
    return-void
.end method
