.class public Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;
.super Lcom/oneplus/security/BaseSharePreference;
.source "AutoCalibrateUtil.java"


# direct methods
.method public static getLastCalibrateTime(Landroid/content/Context;I)J
    .locals 2

    const-string p0, "auto_calibrate_function"

    .line 67
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_sim_last_calibrate_time_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getNativeTotalUsageWhenLastCalibrated(Landroid/content/Context;I)J
    .locals 2

    const-string p0, "key_native_total_usage_last_calibrate_shared_preference"

    .line 61
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_native_total_usage_last_calibrated_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static saveNativeTotalUsageWhenLastCalibrated(Landroid/content/Context;IJ)V
    .locals 2

    const-string p0, "key_native_total_usage_last_calibrate_shared_preference"

    .line 75
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 76
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_native_total_usage_last_calibrated_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setLastCalibrateTime(Landroid/content/Context;JIZ)V
    .locals 4

    const/4 v0, -0x1

    if-ne v0, p3, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->isSlotSimReady(I)Z

    move-result v0

    const-string v1, "AutoCalibrateUtil"

    if-nez v0, :cond_1

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The sim card is not ready , simIndex"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "auto_calibrate_function"

    .line 44
    invoke-static {v0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_sim_last_calibrate_time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz p4, :cond_2

    .line 54
    invoke-static {p0, p3}, Lcom/oneplus/security/network/calibrate/AutoSaveNativeTrafficUsageService;->getAndSaveCurrentNativeTrafficTotalUsage(Landroid/content/Context;I)V

    .line 56
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "save last calibrate time "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
