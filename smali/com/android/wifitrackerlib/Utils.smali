.class Lcom/android/wifitrackerlib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static sNetworkScoreManager:Landroid/net/NetworkScoreManager;


# direct methods
.method private static getActiveScorerPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/wifitrackerlib/Utils;->sNetworkScoreManager:Landroid/net/NetworkScoreManager;

    if-nez v0, :cond_0

    .line 91
    const-class v0, Landroid/net/NetworkScoreManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkScoreManager;

    sput-object p0, Lcom/android/wifitrackerlib/Utils;->sNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 93
    :cond_0
    sget-object p0, Lcom/android/wifitrackerlib/Utils;->sNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 411
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getActiveScorerPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 418
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 421
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 418
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 472
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSetAutoJoinEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 477
    :cond_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->auto_connect_disable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method static getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiNetworkScoreCache;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)I"
        }
    .end annotation

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 363
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/wifi/ScanResult;)Landroid/net/ScoredNetwork;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 367
    :cond_1
    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v3}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    return v0

    .line 376
    :cond_3
    div-int/2addr v2, v1

    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->roundToClosestSpeedEnum(I)I

    move-result p0

    return p0
.end method

.method static getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 99
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    sget-object v0, Lcom/android/wifitrackerlib/-$$Lambda$Utils$wGn2sVTZ5l1wFLkqd7rxKtPh0RU;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$wGn2sVTZ5l1wFLkqd7rxKtPh0RU;

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method static getCarrierNameForSubId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "phone"

    .line 642
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    return-object v0

    .line 644
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 648
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 652
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getCurrentNetworkCapabilitiesInformation(Landroid/content/Context;Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 584
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 585
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "network_available_sign_in"

    const-string v1, "string"

    const-string v2, "android"

    .line 586
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 585
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x18

    .line 589
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 591
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_limited_connection:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x10

    .line 594
    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 595
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 596
    sget p1, Lcom/android/wifitrackerlib/R$string;->private_dns_broken:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 598
    :cond_3
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_connected_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method static getDisconnectedStateDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 432
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 437
    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    .line 439
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 441
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_no_internet_no_reconnect:I

    goto :goto_0

    :cond_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_no_internet:I

    .line 442
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 443
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    if-eqz v2, :cond_8

    .line 446
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    .line 447
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    if-eq p1, v3, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-eq p1, v1, :cond_4

    goto :goto_1

    .line 451
    :cond_4
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_check_password_try_again:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 453
    :cond_5
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_network_failure:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 449
    :cond_6
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_password_failure:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 455
    :cond_7
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_generic:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 459
    :cond_8
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_9

    goto :goto_1

    .line 462
    :cond_9
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getRecentFailureReason()I

    move-result p1

    const/16 v1, 0x11

    if-ne p1, v1, :cond_a

    .line 464
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_ap_unable_to_handle_new_sta:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_1
    return-object v0
.end method

.method static getImsiProtectionDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 711
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 715
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 717
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    goto :goto_0

    .line 719
    :cond_1
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    :goto_0
    if-eq p1, v2, :cond_3

    .line 722
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->isImsiPrivacyProtectionProvided(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 727
    :cond_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->imsi_protection_warning:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget v0, Lcom/android/wifitrackerlib/R$string;->help_url_imsi_protection:I

    .line 728
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 727
    invoke-static {p0, p1, v1, v0}, Lcom/android/wifitrackerlib/Utils;->linkifyAnnotation(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method static getMeteredDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSetMeteredChoice()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 486
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    move-result v1

    if-eq v1, v2, :cond_1

    return-object v0

    .line 490
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 491
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_metered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 493
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_unmetered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 495
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isMetered()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_metered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method static getNetworkDetailedState(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 612
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/wifitrackerlib/R$array;->wifi_status:I

    .line 613
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 614
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    .line 615
    array-length v1, p0

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    aget-object v0, p0, p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method static getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 550
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    .line 553
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_2

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 557
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getMaxNetworkSelectionDisableReason()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_4

    .line 566
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 570
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-static {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    .line 572
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 575
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    .line 140
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x5

    return p0

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    return v3

    .line 146
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x6

    return p0

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x4

    return p0

    .line 156
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 159
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 162
    :cond_6
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    move v2, v0

    :goto_0
    return v2

    :cond_8
    :goto_1
    return v3
.end method

.method static getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const/4 v2, 0x0

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    const-string v3, "WAPI-PSK"

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x8

    .line 110
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WAPI-CERT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x9

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "PSK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const-string v6, "SAE"

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "OWE_TRANSITION"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x4

    if-eqz v1, :cond_4

    .line 117
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 119
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v8, "OWE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 120
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v7, "WEP"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p0, 0x1

    .line 122
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 126
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_8
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "EAP_SUITE_B_192"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 p0, 0x6

    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_9
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method static getSpeedDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSpeed()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_4

    const/16 v1, 0xa

    if-eq p1, v1, :cond_3

    const/16 v1, 0x14

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_1

    return-object v0

    .line 507
    :cond_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->speed_label_very_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 509
    :cond_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->speed_label_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 511
    :cond_3
    sget p1, Lcom/android/wifitrackerlib/R$string;->speed_label_okay:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 513
    :cond_4
    sget p1, Lcom/android/wifitrackerlib/R$string;->speed_label_slow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method static getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I
    .locals 1

    .line 384
    invoke-static {p1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    .line 383
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 388
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->roundToClosestSpeedEnum(I)I

    move-result p0

    return p0
.end method

.method static getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    .line 664
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const-string v0, "telephony_subscription_service"

    .line 668
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_1

    return v1

    .line 673
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 674
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 679
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 680
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 681
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v3, v4, :cond_3

    .line 682
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_4
    :goto_0
    return v1
.end method

.method static getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 3

    .line 521
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 527
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfoDescription()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 529
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 532
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResultDescription()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 537
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkSelectionDescription()Ljava/lang/String;

    move-result-object p0

    .line 538
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 539
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 542
    :cond_3
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method static isImsiPrivacyProtectionProvided(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "carrier_config"

    .line 697
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 701
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p1, "imsi_key_availability_int"

    .line 705
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 656
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_0

    .line 657
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getBestScanResultByLevel$0(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 101
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    return p0
.end method

.method static synthetic lambda$mapScanResultsToKey$1(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 193
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$mapScanResultsToKey$2(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 0

    .line 194
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    return-object p0
.end method

.method static linkifyAnnotation(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    .line 734
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 735
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/Annotation;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Annotation;

    .line 738
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 739
    invoke-virtual {v4}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 740
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 741
    new-instance p2, Lcom/android/wifitrackerlib/Utils$1;

    invoke-direct {p2, p0, p3}, Lcom/android/wifitrackerlib/Utils$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 748
    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    .line 749
    invoke-virtual {v0, v4}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    invoke-virtual {v0, p2}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 748
    invoke-virtual {p1, p2, p0, p3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method static mapScanResultsToKey(Ljava/util/List;ZLjava/util/Map;ZZZZ)Ljava/util/Map;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;ZZZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    .line 192
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/wifitrackerlib/-$$Lambda$Utils$YXgA7eQ3EufOS8jlgf9HRQs4bfM;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$YXgA7eQ3EufOS8jlgf9HRQs4bfM;

    .line 193
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;->INSTANCE:Lcom/android/wifitrackerlib/-$$Lambda$Utils$_MVjtMEczmHvXav1qgSkgxMj5iE;

    .line 194
    invoke-static {v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 195
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 197
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    .line 199
    invoke-static {v4, v5}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    .line 201
    invoke-static {v4, v7}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 200
    invoke-interface {v0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    .line 203
    invoke-static {v4, v9}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x4

    .line 205
    invoke-static {v4, v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 204
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x8

    .line 207
    invoke-static {v4, v13}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 206
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    const/16 v14, 0x9

    .line 209
    invoke-static {v4, v14}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 208
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 216
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v16, v9

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    const/16 v21, 0x1

    if-eqz v20, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/ScanResult;

    .line 217
    invoke-static/range {v20 .. v20}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v14

    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move/from16 v16, v21

    .line 221
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move/from16 v17, v21

    .line 224
    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move/from16 v18, v21

    .line 227
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move/from16 v19, v21

    :cond_5
    const/16 v13, 0x8

    .line 230
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    const/16 v9, 0x9

    .line 233
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    const/16 v13, 0x8

    const/16 v14, 0x9

    goto :goto_1

    .line 238
    :cond_6
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 239
    invoke-static {v13}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v14

    .line 240
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_7

    .line 243
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    if-nez p4, :cond_8

    const/4 v5, 0x6

    .line 246
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    if-nez p5, :cond_9

    .line 249
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_9
    if-nez p6, :cond_a

    const/16 v5, 0x8

    .line 252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/16 v5, 0x9

    .line 253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    move/from16 v11, v21

    goto :goto_3

    :cond_b
    const/4 v5, 0x2

    :cond_c
    const/4 v11, 0x0

    .line 258
    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x5

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    move/from16 v5, v21

    goto :goto_4

    :cond_d
    const/4 v7, 0x5

    :cond_e
    const/4 v5, 0x0

    :goto_4
    const/16 v22, 0x2

    .line 260
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v23, v0

    if-eqz v7, :cond_f

    const/4 v7, 0x5

    .line 261
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object/from16 v24, v1

    move/from16 v0, v21

    goto :goto_5

    :cond_f
    move-object/from16 v24, v1

    const/4 v0, 0x0

    :goto_5
    const/4 v7, 0x4

    .line 262
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/16 v20, 0x0

    if-eqz v1, :cond_10

    .line 263
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    move/from16 v1, v21

    goto :goto_6

    :cond_10
    move/from16 v1, v20

    .line 264
    :goto_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v25, v3

    if-eqz v7, :cond_11

    const/4 v7, 0x4

    .line 265
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move/from16 v3, v21

    goto :goto_7

    :cond_11
    const/4 v7, 0x4

    :cond_12
    move/from16 v3, v20

    .line 266
    :goto_7
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    move-object/from16 v26, v9

    if-eqz v7, :cond_13

    const/4 v7, 0x4

    .line 267
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    move-object/from16 v27, v13

    move/from16 v7, v21

    goto :goto_8

    :cond_13
    move-object/from16 v27, v13

    const/4 v7, 0x0

    :goto_8
    const/16 v9, 0x8

    .line 268
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v28, v2

    const/16 v13, 0x9

    .line 269
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz p1, :cond_25

    if-eqz v5, :cond_15

    if-nez v6, :cond_14

    if-eqz v8, :cond_14

    if-eqz v17, :cond_14

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v9, v26

    move-object/from16 v2, v28

    const/4 v5, 0x2

    const/4 v7, 0x5

    :goto_9
    const/4 v11, 0x4

    goto/16 :goto_2

    :cond_14
    const/4 v5, 0x2

    .line 280
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a
    move v7, v5

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v5, 0x8

    goto/16 :goto_10

    :cond_15
    const/4 v5, 0x2

    if-eqz v0, :cond_17

    if-nez v6, :cond_16

    if-eqz v8, :cond_16

    const/4 v0, 0x5

    .line 286
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 288
    :cond_16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    :goto_b
    const/4 v1, 0x4

    :goto_c
    const/16 v2, 0x9

    const/4 v3, 0x0

    :goto_d
    const/16 v5, 0x8

    :goto_e
    const/4 v7, 0x2

    goto/16 :goto_10

    :cond_17
    if-eqz v11, :cond_1a

    if-nez v6, :cond_19

    if-nez v8, :cond_18

    if-nez v16, :cond_19

    :cond_18
    const/4 v0, 0x5

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_19
    const/4 v0, 0x5

    const/4 v1, 0x2

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    const/4 v0, 0x5

    if-eqz v1, :cond_1c

    if-eqz v19, :cond_1b

    if-eqz v10, :cond_1b

    if-nez v12, :cond_1b

    move v7, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v9, v26

    move-object/from16 v2, v28

    const/4 v5, 0x2

    goto :goto_9

    :cond_1b
    const/4 v1, 0x4

    .line 307
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1c
    const/4 v1, 0x4

    if-eqz v3, :cond_1f

    if-nez v12, :cond_1e

    if-nez v10, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    .line 318
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 316
    :cond_1e
    :goto_f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1f
    if-eqz v7, :cond_22

    if-eqz v18, :cond_21

    if-nez v12, :cond_20

    if-nez v10, :cond_21

    :cond_20
    move v7, v0

    move v11, v1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v9, v26

    move-object/from16 v2, v28

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_21
    const/4 v3, 0x0

    .line 326
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x9

    goto :goto_d

    :cond_22
    const/4 v3, 0x0

    if-eqz v9, :cond_23

    const/16 v5, 0x8

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x9

    goto/16 :goto_e

    :cond_23
    const/16 v5, 0x8

    if-eqz v2, :cond_24

    const/16 v2, 0x9

    .line 331
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_24
    const/16 v2, 0x9

    .line 333
    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_e

    :cond_25
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 336
    invoke-interface {v15, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v7, 0x2

    if-eqz v11, :cond_26

    .line 341
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_26
    :goto_10
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_28

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 346
    invoke-static {v4, v11}, Lcom/android/wifitrackerlib/StandardWifiEntry;->ssidAndSecurityToStandardWifiEntryKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v13, v28

    .line 347
    invoke-interface {v13, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_27

    .line 348
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_27
    invoke-interface {v13, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object/from16 v14, v27

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v28, v13

    goto :goto_11

    :cond_28
    move v11, v1

    move v5, v7

    move-object/from16 v1, v24

    move-object/from16 v3, v25

    move-object/from16 v9, v26

    move-object/from16 v2, v28

    move v7, v0

    move-object/from16 v0, v23

    goto/16 :goto_2

    :cond_29
    move-object v13, v2

    return-object v13
.end method

.method private static roundToClosestSpeedEnum(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x7

    if-ge p0, v0, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0xf

    if-ge p0, v0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const/16 v0, 0x19

    if-ge p0, v0, :cond_3

    const/16 p0, 0x14

    return p0

    :cond_3
    const/16 p0, 0x1e

    return p0
.end method
