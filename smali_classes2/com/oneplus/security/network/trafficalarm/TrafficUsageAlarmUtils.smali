.class public Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;
.super Lcom/oneplus/security/BaseSharePreference;
.source "TrafficUsageAlarmUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static clearSystemDataLimitValue(Landroid/content/Context;I)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_datausage_limit_value_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->clearTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static clearSystemDataWarnValue(Landroid/content/Context;I)V
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_datausage_warn_value_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-static {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->clearTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static clearTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 453
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidKey()V

    return-void

    :cond_0
    const-string p0, "traffic_usage_alert"

    .line 456
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 457
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 458
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getDataTotalState(Landroid/content/Context;I)Z
    .locals 1

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_data_usage_total_state_subid_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "traffic_usage_alert"

    .line 76
    invoke-static {p1}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x0

    .line 77
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getDataUsageLeftAlertConfigKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_datausage_alert_number_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getDataUsageLimitValueConfigKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_datausage_limit_number_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getDataWarnState(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v0, 0x0

    .line 128
    invoke-static {p0, p1, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;ZI)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 129
    invoke-static {p0, p1, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;ZI)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public static getDataWarnState(Landroid/content/Context;ZI)Z
    .locals 1

    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    invoke-static {p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTenPercentDataLeftConfigKey(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getDataWarnValue(Landroid/content/Context;IJ)J
    .locals 0

    .line 239
    invoke-static {p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataUsageLeftAlertConfigKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getHasDataWarnAlerted(Landroid/content/Context;ZI)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_has_sim_alert_ten_percent_left_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 269
    :cond_0
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidSlotId()V

    return p1
.end method

.method public static getSystemDataLimitValue(Landroid/content/Context;IJ)J
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_datausage_limit_value_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSystemDataWarnValue(Landroid/content/Context;IJ)J
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_datausage_warn_value_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getTenPercentDataLeftConfigKey(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_ten_percent_low_remaining_state_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    if-nez p1, :cond_0

    .line 430
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidKey()V

    const/4 p0, 0x0

    return p0

    .line 433
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTrafficUsagePreferenceBooleanValue: key "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrafficUsageAlarmUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "traffic_usage_alert"

    .line 434
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 435
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getTrafficUsagePreferenceBooleanValue: state"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static getTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    if-nez p1, :cond_0

    .line 464
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidKey()V

    return-wide p2

    :cond_0
    const-string p0, "traffic_usage_alert"

    .line 467
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 468
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTrafficRunningOutAlreadyAlerted: defaultValue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficUsageAlarmUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "isTrafficRunningOutAlreadyAlerted: INVALID_SIM_SLOT_ID-1"

    .line 349
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTrafficRunningOutAlreadyAlerted: slotId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_has_sim_alert_running_out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 354
    :cond_0
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidSlotId()V

    return p1
.end method

.method private static logOutUsingInvalidKey()V
    .locals 2

    const-string v0, "TrafficUsageAlarmUtils"

    const-string v1, "save has traffic running out auto close on invalid key"

    .line 404
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logOutUsingInvalidSlotId()V
    .locals 2

    const-string v0, "TrafficUsageAlarmUtils"

    const-string v1, "save has traffic running out auto close on invalid slot id"

    .line 400
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static resetTrafficDialogAlertedState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-static {p0, v0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setHasDataWarnAlerted(Landroid/content/Context;ZI)V

    .line 571
    invoke-static {p0, v0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setHasAlertedTrafficRunningOut(Landroid/content/Context;ZI)V

    return-void
.end method

.method public static setDataLimitValue(Landroid/content/Context;JI)V
    .locals 1

    .line 153
    invoke-static {p3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataUsageLimitValueConfigKey(I)Ljava/lang/String;

    move-result-object p3

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    return-void
.end method

.method public static setDataTotalState(Landroid/content/Context;ZI)V
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_data_usage_total_state_subid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p0, "traffic_usage_alert"

    .line 61
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 63
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setDataWarnState(Landroid/content/Context;ZI)V
    .locals 1

    .line 100
    invoke-static {p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getTenPercentDataLeftConfigKey(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {p0, p2, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setDataWarnValue(Landroid/content/Context;JI)V
    .locals 1

    .line 140
    invoke-static {p3}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataUsageLeftAlertConfigKey(I)Ljava/lang/String;

    move-result-object p3

    .line 141
    invoke-static {p0, p3, p1, p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)V

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p3, p1, p2, v0}, Landroid/provider/Settings$System;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    return-void
.end method

.method public static setHasAlertedTrafficRunningOut(Landroid/content/Context;ZI)V
    .locals 2

    const/4 v0, -0x1

    if-eq v0, p2, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_has_sim_alert_running_out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidSlotId()V

    :goto_0
    return-void
.end method

.method public static setHasDataWarnAlerted(Landroid/content/Context;ZI)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_has_sim_alert_ten_percent_left_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidSlotId()V

    :goto_0
    return-void
.end method

.method public static setSystemDataLimitValue(Landroid/content/Context;JI)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemDataLimitValue: value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficUsageAlarmUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_datausage_limit_value_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 167
    invoke-static {p0, p3, p1, p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static setSystemDataWarnValue(Landroid/content/Context;JI)V
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system_datausage_warn_value_sim_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 179
    invoke-static {p0, p3, p1, p2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->setTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private static setTrafficUsagePreferenceBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 418
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidKey()V

    return-void

    .line 421
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setTrafficUsagePreferenceBooleanValue: state "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TrafficUsageAlarmUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "traffic_usage_alert"

    .line 422
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 424
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setTrafficUsagePreferenceStringValue(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 442
    invoke-static {}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->logOutUsingInvalidKey()V

    return-void

    :cond_0
    const-string p0, "traffic_usage_alert"

    .line 445
    invoke-static {p0}, Lcom/oneplus/security/BaseSharePreference;->getDefaultSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 446
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 447
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static shouldAlertDataWarn(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 522
    invoke-static {p0, v0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataWarnState(Landroid/content/Context;ZI)Z

    move-result v1

    .line 523
    invoke-static {p0, v0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getHasDataWarnAlerted(Landroid/content/Context;ZI)Z

    move-result p0

    if-eqz v1, :cond_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static shouldAlertTrafficRunningOut(Landroid/content/Context;I)Z
    .locals 4

    const/4 v0, 0x1

    .line 481
    invoke-static {p0, v0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z

    move-result v1

    .line 482
    invoke-static {p0, p1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->getDataTotalState(Landroid/content/Context;I)Z

    move-result p0

    .line 483
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldAlertTrafficRunningOut: isTrafficRunningOutAlreadyAlerted "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TrafficUsageAlarmUtils"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldAlertTrafficRunningOut: limitState"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shouldStartDataWarnMonitorService(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 534
    invoke-static {p0, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldAlertDataWarn(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 535
    invoke-static {p0, v2}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->shouldAlertDataWarn(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0
.end method

.method public static shouldStartRunningOutMonitorService(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 495
    invoke-static {p0, v0, v1}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    invoke-static {p0, v0, v0}, Lcom/oneplus/security/network/trafficalarm/TrafficUsageAlarmUtils;->isTrafficRunningOutAlreadyAlerted(Landroid/content/Context;ZI)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method
