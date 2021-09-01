.class public Lcom/android/settings/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 140
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getAccessPointSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 276
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 278
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SAE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x5

    return p0

    .line 282
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x8

    return p0

    .line 284
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x9

    return p0

    .line 287
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    return p0

    .line 289
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP_SUITE_B_192"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x6

    return p0

    .line 291
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x3

    return p0

    .line 293
    :cond_6
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x4

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public static getConnectingType(Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isOsuProvider()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 316
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 319
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getWifiConfig(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one of AccessPoint and ScanResult input is required."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1
    :goto_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    if-nez p0, :cond_2

    .line 171
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->getAccessPointSecurity(Landroid/net/wifi/ScanResult;)I

    move-result p0

    goto :goto_2

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-nez p1, :cond_3

    .line 176
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput p1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 179
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean p1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p0

    :goto_2
    const-string p1, "[0-9A-Fa-f]{64}"

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/16 v3, 0x22

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 254
    :pswitch_1
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 244
    :pswitch_2
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 245
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 246
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 247
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_4

    .line 249
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    const/4 p0, 0x4

    .line 228
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 229
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 230
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_4

    .line 235
    :pswitch_4
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_4

    :pswitch_5
    if-ne p0, v1, :cond_5

    const/4 p0, 0x5

    .line 218
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_3

    :cond_5
    const/4 p0, 0x3

    .line 220
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 223
    :goto_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 224
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    const/4 p0, 0x2

    .line 204
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 206
    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 207
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_4

    .line 209
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_4

    :pswitch_7
    const/4 p0, 0x1

    .line 190
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 192
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xa

    if-eq p0, p1, :cond_7

    const/16 p1, 0x1a

    if-eq p0, p1, :cond_7

    const/16 p1, 0x3a

    if-ne p0, p1, :cond_8

    :cond_7
    const-string p0, "[0-9A-Fa-f]*"

    .line 195
    invoke-virtual {p2, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 196
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p2, p0, v2

    goto :goto_4

    .line 198
    :cond_8
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v2

    goto :goto_4

    .line 186
    :pswitch_8
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    :cond_9
    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isHotspotPasswordValid(Ljava/lang/String;)Z
    .locals 2

    .line 64
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 68
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 69
    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 74
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x8

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "device_policy"

    .line 91
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "user"

    .line 93
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    const-string v4, "android.software.device_admin"

    .line 97
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    return v5

    :cond_1
    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 105
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    .line 107
    :try_start_0
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 109
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_3

    :goto_0
    move p1, v5

    goto :goto_1

    .line 113
    :cond_2
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v3

    .line 115
    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 119
    :try_start_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 120
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v1, p1, :cond_3

    goto :goto_0

    :catch_0
    :cond_3
    move p1, v0

    :goto_1
    if-nez p1, :cond_4

    return v0

    .line 131
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "wifi_device_owner_configs_lockdown"

    .line 132
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_5

    move v0, v5

    :cond_5
    return v0
.end method

.method public static isSSIDTooLong(Ljava/lang/String;)Z
    .locals 2

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 53
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSSIDTooShort(Ljava/lang/String;)Z
    .locals 2

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportDualBand()Z
    .locals 3

    const-string v0, "persist.vendor.wifi.softap.dualband"

    const-string v1, "0"

    .line 330
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dualband:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "1"

    .line 333
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
