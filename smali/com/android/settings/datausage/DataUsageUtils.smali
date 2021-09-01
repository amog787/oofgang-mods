.class public final Lcom/android/settings/datausage/DataUsageUtils;
.super Lcom/android/settingslib/net/DataUsageUtils;
.source "DataUsageUtils.java"


# direct methods
.method public static formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 8

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 86
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "index_data_usage_unit"

    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v4

    :goto_0
    const-string v5, "%.2f"

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_0

    .line 111
    iget-object p1, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    .line 112
    iget-object p2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    goto :goto_3

    :cond_0
    long-to-double p1, p1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p1, v0

    cmpg-double v0, p1, v6

    if-gez v0, :cond_1

    .line 104
    sget p1, Lcom/android/settings/R$string;->data_usage_less_than_value:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 106
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 108
    :goto_1
    sget p2, Lcom/android/settings/R$string;->data_usage_unit_mb:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    long-to-double p1, p1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p1, v0

    cmpg-double v0, p1, v6

    if-gez v0, :cond_3

    .line 95
    sget p1, Lcom/android/settings/R$string;->data_usage_less_than_value:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-array v0, v3, [Ljava/lang/Object;

    .line 97
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    :goto_2
    sget p2, Lcom/android/settings/R$string;->data_usage_unit_gb:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 116
    :cond_4
    iget-object p1, v0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    .line 117
    iget-object p2, v0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    .line 121
    :goto_3
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    const v1, 0x104034e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultSubscriptionId(Landroid/content/Context;)I
    .locals 2

    .line 222
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 223
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 228
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_4

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    .line 239
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 1

    .line 247
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {p0, p1}, Lcom/android/settings/datausage/lib/DataUsageLib;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 249
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 250
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0

    .line 252
    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static getVtDataUsageBytes()J
    .locals 11

    const-string v0, "getVtDataUsage"

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, "extphone"

    .line 262
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    .line 263
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "generalGetter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/os/Bundle;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 264
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 265
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "phone"

    .line 266
    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v9

    aput-object v5, v6, v10

    .line 267
    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 269
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    :cond_0
    const-string v0, "DataUsageUtils"

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Vt usage bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v1
.end method

.method public static hasEthernet(Landroid/content/Context;)Z
    .locals 9

    .line 133
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v1, 0x9

    .line 134
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 139
    const-class v2, Landroid/app/usage/NetworkStatsManager;

    .line 140
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/app/usage/NetworkStatsManager;

    const/16 v3, 0x9

    .line 144
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 143
    invoke-virtual/range {v2 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForUser(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DataUsageUtils"

    const-string v2, "Exception querying network detail."

    .line 150
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public static hasMobileData(Landroid/content/Context;)Z
    .locals 1

    .line 160
    const-class v0, Landroid/net/ConnectivityManager;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 7

    .line 174
    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionsInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 183
    :cond_0
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 187
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    and-int/2addr v4, v5

    goto :goto_0

    .line 192
    :cond_2
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 193
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v4, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 1

    .line 211
    const-class v0, Landroid/net/ConnectivityManager;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
