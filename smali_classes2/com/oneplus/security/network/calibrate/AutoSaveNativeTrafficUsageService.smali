.class public Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;
.super Landroid/app/IntentService;
.source "AutoSaveNativeTrafficUsageService.java"


# instance fields
.field private mNativeTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "AutoSaveNativeTrafficUsageService"

    .line 43
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getAndSaveCurrentNativeTrafficTotalUsage(Landroid/content/Context;I)V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.oneplus.security.network.calibrate.action.fetch_and_save"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "key_slot_id_to_save_native_total_usage"

    .line 36
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 49
    invoke-static {}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getTrafficModelInstance()Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;->mNativeTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 55
    iget-object p0, p0, Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;->mNativeTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    invoke-interface {p0}, Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;->clearTrafficData()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 10

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.security.network.calibrate.action.fetch_and_save"

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;->mNativeTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    if-eqz v0, :cond_2

    const-string v0, "key_slot_id_to_save_native_total_usage"

    const/4 v1, -0x1

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "SaveNativeTrafficUsage"

    if-ne p1, v1, :cond_0

    const-string v1, "invalid slot id offered, finish."

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    invoke-static {p0, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->getLastCalibrateTime(Landroid/content/Context;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 75
    invoke-static {p0, p1}, Lcom/oneplus/security/network/operator/AccountDayLocalCache;->getAccountDay(Landroid/content/Context;I)I

    move-result v1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/oneplus/security/utils/TimeRegionUtils;->getRegionTime(IJ)[J

    move-result-object v1

    const/4 v2, 0x0

    .line 77
    aget-wide v3, v1, v2

    invoke-static {p0, v3, v4, p1, v2}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->setLastCalibrateTime(Landroid/content/Context;JIZ)V

    .line 78
    aget-wide v3, v1, v2

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastCalibrateTime is invalid time,so we set the start of this datausage cycle as lastCalibrateTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v1, v1, v2

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v8, v3

    goto :goto_0

    :cond_1
    move-wide v8, v1

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;->mNativeTrafficDataModel:Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;

    const-wide/16 v4, 0x0

    move v3, p1

    move-wide v6, v8

    invoke-interface/range {v2 .. v7}, Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;->getNativeDataUsageWithinSpecificTime(IJJ)J

    move-result-wide v1

    .line 82
    invoke-static {p0, p1, v1, v2}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->saveNativeTotalUsageWhenLastCalibrated(Landroid/content/Context;IJ)V

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveNativeTotalUsageWhenLastCalibrated for slotid:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",lastCalibrateTime:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
