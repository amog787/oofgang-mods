.class public Lcom/android/settingslib/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static buildLoggingSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 13

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiUtils;->getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3

    .line 49
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result p0

    if-eqz p0, :cond_3

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_2

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 54
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v7

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    const-wide/16 v7, 0x3c

    .line 55
    rem-long v9, v3, v7

    .line 56
    div-long/2addr v3, v7

    rem-long/2addr v3, v7

    .line 57
    div-long v11, v3, v7

    rem-long/2addr v11, v7

    const-string p0, ", "

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p0, v11, v5

    if-lez p0, :cond_1

    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "h "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "m "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "s "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, ")"

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    const/4 p1, 0x0

    .line 68
    :goto_0
    invoke-static {}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getMaxNetworkSelectionDisableReason()I

    move-result v1

    if-gt p1, v1, :cond_5

    .line 69
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMeteredLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    .line 264
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiUtils;->isMeteredOverridden(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    sget p1, Lcom/android/settingslib/R$string;->wifi_unmetered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 266
    :cond_1
    :goto_0
    sget p1, Lcom/android/settingslib/R$string;->wifi_metered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSpecificApSpeed(Landroid/net/wifi/ScanResult;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)I"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 258
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object p1

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, p0}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p0

    return p0
.end method

.method static getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    const-string v9, " "

    if-eqz v7, :cond_0

    .line 103
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v10, " standard = "

    .line 105
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " rssi="

    .line 106
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " score="

    .line 108
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, " speed="

    .line 110
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v11, " tx=%.1f,"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v9, [Ljava/lang/Object;

    .line 113
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v11, "%.1f,"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v9, [Ljava/lang/Object;

    .line 114
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v11, "%.1f "

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v9, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v9, v8

    const-string v1, "rx=%.1f"

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 130
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v11, -0x7f

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    move v12, v8

    move v13, v12

    move v2, v11

    move v5, v2

    move v14, v5

    move v15, v14

    move v11, v13

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    move/from16 v19, v5

    if-eqz v18, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v5, v18

    check-cast v5, Landroid/net/wifi/ScanResult;

    if-nez v5, :cond_3

    move/from16 v5, v19

    goto :goto_1

    :cond_3
    move-object/from16 v18, v1

    .line 135
    iget v1, v5, Landroid/net/wifi/ScanResult;->frequency:I

    move/from16 v20, v12

    const/16 v12, 0x172f

    if-lt v1, v12, :cond_6

    const/16 v12, 0x1bcb

    if-gt v1, v12, :cond_6

    add-int/lit8 v13, v13, 0x1

    .line 139
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v2, :cond_4

    move v2, v1

    :cond_4
    const/4 v1, 0x4

    if-gt v13, v1, :cond_5

    .line 144
    invoke-static {v0, v5, v7, v9, v10}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    move-object/from16 v21, v6

    move-object/from16 v1, v17

    move/from16 v5, v19

    goto/16 :goto_5

    .line 147
    :cond_6
    iget v1, v5, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v12, 0x1324

    if-lt v1, v12, :cond_8

    const/16 v12, 0x170c

    if-gt v1, v12, :cond_8

    add-int/lit8 v11, v11, 0x1

    .line 152
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v15, :cond_7

    move v15, v1

    :cond_7
    const/4 v1, 0x4

    if-gt v11, v1, :cond_5

    .line 157
    invoke-static {v0, v5, v7, v9, v10}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 160
    :cond_8
    iget v1, v5, Landroid/net/wifi/ScanResult;->frequency:I

    const/16 v12, 0x960

    if-lt v1, v12, :cond_a

    const/16 v12, 0x9c4

    if-gt v1, v12, :cond_a

    add-int/lit8 v8, v8, 0x1

    .line 165
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v14, :cond_9

    move v14, v1

    :cond_9
    const/4 v1, 0x4

    if-gt v8, v1, :cond_5

    .line 170
    invoke-static {v0, v5, v7, v9, v10}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 173
    :cond_a
    iget v1, v5, Landroid/net/wifi/ScanResult;->frequency:I

    const v12, 0xe3d0

    if-lt v1, v12, :cond_d

    const v12, 0x11238

    if-gt v1, v12, :cond_d

    add-int/lit8 v12, v20, 0x1

    .line 178
    iget v1, v5, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v21, v6

    move/from16 v6, v19

    if-le v1, v6, :cond_b

    goto :goto_3

    :cond_b
    move v1, v6

    :goto_3
    const/4 v6, 0x4

    if-gt v12, v6, :cond_c

    .line 183
    invoke-static {v0, v5, v7, v9, v10}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v17

    .line 182
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    move-object/from16 v6, v17

    :goto_4
    move v5, v1

    move-object v1, v6

    goto :goto_6

    :cond_d
    move-object/from16 v21, v6

    move-object/from16 v1, v17

    move/from16 v6, v19

    move v5, v6

    :goto_5
    move/from16 v12, v20

    :goto_6
    move-object/from16 v17, v1

    move-object/from16 v1, v18

    move-object/from16 v6, v21

    goto/16 :goto_1

    :cond_e
    move-object/from16 v21, v6

    move/from16 v20, v12

    move-object/from16 v1, v17

    move/from16 v6, v19

    const-string v0, " ["

    move-object/from16 v5, v16

    .line 188
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    const-string v7, "max="

    const-string v9, ")"

    const-string v10, "("

    if-lez v8, :cond_10

    .line 190
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x4

    if-le v8, v12, :cond_f

    .line 192
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v3, ";"

    .line 196
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v11, :cond_12

    .line 198
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x4

    if-le v11, v8, :cond_11

    .line 200
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_12
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v20, :cond_14

    .line 206
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v20

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    if-le v12, v4, :cond_13

    .line 208
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_14
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v13, :cond_16

    .line 214
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-le v13, v1, :cond_15

    .line 216
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_15
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const-string v0, "]"

    .line 223
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isMeteredOverridden(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 272
    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \n{"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "*"

    .line 234
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "="

    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    .line 237
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScoredNetworkCache()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiUtils;->getSpecificApSpeed(Landroid/net/wifi/ScanResult;Ljava/util/Map;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_1
    iget-wide p0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    sub-long/2addr p3, p0

    long-to-int p0, p3

    div-int/lit16 p0, p0, 0x3e8

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 245
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
