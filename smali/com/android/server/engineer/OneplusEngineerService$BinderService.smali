.class final Lcom/android/server/engineer/OneplusEngineerService$BinderService;
.super Landroid/engineer/IOneplusEngineerManager$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# static fields
.field private static final TORCH_SWITCH_FILE_PATH:Ljava/lang/String; = "/proc/qcom_flash"


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method private constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/engineer/IOneplusEngineerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/OneplusEngineerService$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService$BinderService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    return-void
.end method


# virtual methods
.method public disablePartionWriteProtect(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/tsu;->gck(Z)Z

    move-result p0

    return p0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->igw(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump engineer from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/engineer/OneplusEngineerService;->wtn(Lcom/android/server/engineer/OneplusEngineerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public fastbootUnlock([BI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0xf4277

    invoke-static {p0, p1, p2}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0
.end method

.method public getBackCoverColorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->qbh()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBadBatteryConfig(II)[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/engineer/tsu;->sis(II)[B

    move-result-object p0

    return-object p0
.end method

.method public getBootImgWaterMark()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf425d

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCalibrationStatusFromNvram()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4259

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getCarrierVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4248

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCarrierVersionFromNvram()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4257

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockDays()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4265

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockFirstBindTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf426b

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockICCID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4269

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockIMSI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4263

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockLastBindTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4267

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4261

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceLockUnlockTime()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf426d

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->ibl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEmmcHealthInfo()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0x186a4

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    return-object p0
.end method

.method public getOneplusUsageRecords(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/tsu;->cno(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getProductLineTestResult()[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/server/engineer/tsu;->rtg()[B

    move-result-object p0

    return-object p0
.end method

.method public getRegionNetlockStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf424a

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSimOperatorSwitchStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf425b

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSingleDoubleCardStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf4250

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public getTelcelSimlockStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf424c

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTelcelSimlockUnlockTimes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p0, 0xf424e

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEngineerItemInBlackList(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0, p2}, Lcom/android/server/engineer/OneplusEngineerService;->zgw(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0, p2}, Lcom/android/server/engineer/OneplusEngineerService;->cjf(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->oxb(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->vdb(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isPartionWriteProtectDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/engineer/tsu;->tsu()Z

    move-result p0

    return p0
.end method

.method public isSerialPortEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const p0, 0x186a2

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->hmo([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "ENABLE_UART:TRUE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public readEngineerData(I)[B
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object p0

    return-object p0
.end method

.method public resetProductLineTestResult()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/android/server/engineer/tsu;->kth()Z

    move-result p0

    return p0
.end method

.method public resetWriteProtectState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->hmo()Z

    move-result p0

    return p0
.end method

.method public saveCarrierVersionToNvram([B)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0xf4258

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0
.end method

.method public saveEngineerData(I[BI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0
.end method

.method public saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/engineer/tsu;->igw(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBackCoverColorId(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->fto(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setBatteryBatteryConfig(II[B)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/engineer/tsu;->wtn(II[B)I

    move-result p0

    return p0
.end method

.method public setCarrierVersion(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf4249

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockDays(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf4266

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockFirstBindTime(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf426c

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockICCID(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf426a

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockIMSI(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf4264

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockLastBindTime(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf4268

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockStatus(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf4262

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setDeviceLockUnlockTime(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf426e

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setProductLineTestResult(II)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/engineer/tsu;->dma(II)Z

    move-result p0

    return p0
.end method

.method public setRegionNetlock(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf424b

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setSerialPortState(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_1

    const-string p1, "ENABLE_UART:TRUE"

    goto :goto_0

    :cond_1
    const-string p1, "ENABLE_UART:FALSE"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0x186a3

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0
.end method

.method public setSimOperatorSwitch(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf425c

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setSingleDoubleCard(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf4251

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTelcelSimlock(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf424d

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setTelcelSimlockUnlockTimes(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const p1, 0xf424f

    array-length v0, p0

    invoke-static {p1, p0, v0}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public setTorchState(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p0, "/proc/qcom_flash"

    invoke-static {p0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTorchState state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public turnBreathLightFlashOn(I)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerService;->igw(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e003e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->igw(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x10e003d

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    return-void
.end method

.method public turnBreathLightOff()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    return-void
.end method

.method public turnBreathLightOn(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    return-void
.end method

.method public turnButtonLightOff()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    return-void
.end method

.method public turnButtonLightOn(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->bio(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result p0

    return-void
.end method
