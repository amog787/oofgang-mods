.class public Lcom/android/settingslib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final STORAGE_MANAGER_ENABLED_PROPERTY:Ljava/lang/String; = "ro.storage_manager.enabled"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final UNIT_OF_STORAGE:[Ljava/lang/String;

.field public static final UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

.field static final WIFI_PIE:[I

.field private static sPermissionControllerPackageName:Ljava/lang/String;

.field private static sServicesSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSharedSystemSharedLibPackageName:Ljava/lang/String;

.field private static sSystemSignature:[Landroid/content/pm/Signature;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 69
    sget v1, Lcom/android/settingslib/R$drawable;->op_ic_wifi_signal_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->op_ic_wifi_signal_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->op_ic_wifi_signal_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->op_ic_wifi_signal_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->op_ic_wifi_signal_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    const-string v3, "%28?<%21[\u5409\u5343\u5146\u592a]%29\u6bd4\u7279"

    const-string v4, "%28?<%21[\u5409\u5343\u5146\u592a]%29\u5b57\u8282"

    const-string/jumbo v5, "\u5409\u6bd4\u7279"

    const-string/jumbo v6, "\u5409\u5b57\u8282"

    const-string/jumbo v7, "\u5343\u6bd4\u7279"

    const-string/jumbo v8, "\u5343\u5b57\u8282"

    const-string/jumbo v9, "\u5146\u6bd4\u7279"

    const-string/jumbo v10, "\u5146\u5b57\u8282"

    const-string/jumbo v11, "\u592a\u6bd4\u7279"

    const-string/jumbo v12, "\u592a\u5b57\u8282"

    .line 569
    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    const-string v1, "b"

    const-string v2, "B"

    const-string v3, "Gb"

    const-string v4, "GB"

    const-string v5, "Kb"

    const-string v6, "KB"

    const-string v7, "Mb"

    const-string v8, "MB"

    const-string v9, "Tb"

    const-string v10, "TB"

    .line 570
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    return-void
.end method

.method public static applyAlpha(FI)I
    .locals 2

    .line 301
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 302
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 303
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 302
    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static applyAlphaAttr(Landroid/content/Context;II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 293
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 294
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    .line 295
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->applyAlpha(FI)I

    move-result p0

    return p0
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 579
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 580
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-le p1, p2, :cond_0

    .line 581
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    .line 583
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "zh"

    .line 585
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "CN"

    .line 586
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 587
    :goto_0
    sget-object p2, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 588
    aget-object p2, p2, p1

    sget-object v0, Lcom/android/settingslib/Utils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static formatPercentage(D)Ljava/lang/String;
    .locals 1

    .line 203
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(DZ)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    double-to-float p0, p0

    .line 187
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    goto :goto_0

    :cond_0
    double-to-int p0, p0

    .line 188
    :goto_0
    invoke-static {p0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(I)Ljava/lang/String;
    .locals 4

    int-to-double v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 198
    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatPercentage(JJ)Ljava/lang/String;
    .locals 0

    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 193
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->formatPercentage(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 549
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 550
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 549
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 540
    invoke-static {p0}, Lcom/android/launcher3/icons/IconFactory;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/IconFactory;

    move-result-object v0

    const/4 v1, 0x1

    .line 541
    :try_start_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    .line 543
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconFactory;->close()V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    .line 540
    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/icons/IconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public static getBatteryLevel(Landroid/content/Intent;)I
    .locals 3

    const-string v0, "level"

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    const/16 v2, 0x64

    .line 208
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    mul-int/2addr v0, v2

    .line 209
    div-int/2addr v0, p0

    return v0
.end method

.method public static getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4

    const-string v0, "status"

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    sget v2, Lcom/android/settingslib/R$string;->battery_info_status_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-direct {v3, p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(Landroid/content/Intent;)V

    .line 228
    invoke-virtual {v3}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_full:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_3

    .line 232
    invoke-virtual {v3, p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getChargingSpeed(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_2

    if-eq p0, p1, :cond_1

    .line 240
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 234
    :cond_1
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging_fast:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 237
    :cond_2
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_charging_slow:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 p0, 0x3

    if-ne v0, p0, :cond_4

    .line 245
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_discharging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const/4 p0, 0x4

    if-ne v0, p0, :cond_5

    .line 247
    sget p0, Lcom/android/settingslib/R$string;->battery_info_status_not_charging:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    :goto_0
    return-object v2
.end method

.method public static getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const v0, 0x1010435

    .line 255
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static getColorAccentDefaultColor(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010435

    .line 264
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 315
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 318
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 321
    throw p1
.end method

.method public static getColorAttrDefaultColor(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 309
    invoke-virtual {p0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 310
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getColorStateListDefaultColor(Landroid/content/Context;I)I
    .locals 1

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static getCombinedServiceState(Landroid/telephony/ServiceState;)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 526
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 527
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    :cond_1
    if-nez v2, :cond_2

    .line 531
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isNotInIwlan(Landroid/telephony/ServiceState;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    return v1
.end method

.method public static getDefaultStorageManagerDaysToRetain(Landroid/content/res/Resources;)I
    .locals 1

    const v0, 0x10e00c8

    .line 446
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 p0, 0x5a

    :goto_0
    return p0
.end method

.method public static getDisabled(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1010033

    .line 288
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/Utils;->applyAlphaAttr(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private static getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;
    .locals 1

    if-eqz p0, :cond_0

    .line 370
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 371
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;
    .locals 2

    :try_start_0
    const-string v0, "android"

    const/16 v1, 0x40

    .line 378
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 379
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 4

    .line 117
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object p0

    .line 121
    array-length v0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 122
    :goto_0
    array-length v1, v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 123
    :goto_1
    array-length p0, p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 126
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return p0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 128
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return p0

    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 130
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_all:I

    return p0

    :cond_5
    if-eqz v1, :cond_6

    .line 132
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_wifi:I

    return p0

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 134
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_usb_bluetooth:I

    return p0

    :cond_7
    if-eqz v0, :cond_8

    .line 136
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_usb:I

    return p0

    .line 138
    :cond_8
    sget p0, Lcom/android/settingslib/R$string;->tether_settings_title_bluetooth:I

    return p0
.end method

.method public static getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 168
    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getSizeForList(Landroid/content/Context;)I

    move-result v0

    .line 169
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 170
    invoke-static {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->getManagedUserDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 171
    invoke-virtual {p0, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0

    .line 174
    :cond_0
    iget-object v1, p2, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 175
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 177
    new-instance p0, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p0, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-virtual {p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    return-object p0

    .line 180
    :cond_1
    new-instance p1, Lcom/android/settingslib/drawable/UserIconDrawable;

    invoke-direct {p1, v0}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p2, v2}, Lcom/android/settingslib/drawable/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 180
    invoke-virtual {p1, p0}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/drawable/UserIconDrawable;

    .line 182
    invoke-virtual {p1}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    return-object p1
.end method

.method public static getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    sget p1, Lcom/android/settingslib/R$string;->managed_user_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    sget v0, Lcom/android/settingslib/R$string;->user_guest:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 157
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    .line 159
    sget p1, Lcom/android/settingslib/R$string;->unknown:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$string;->running_process_item_user_label:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiIconResource(I)I
    .locals 1

    const/4 v0, 0x0

    .line 406
    invoke-static {p0, v0, v0}, Lcom/android/settingslib/Utils;->getWifiIconResource(IIZ)I

    move-result p0

    return p0
.end method

.method public static getWifiIconResource(IIZ)I
    .locals 1

    if-ltz p0, :cond_0

    .line 416
    sget-object p1, Lcom/android/settingslib/Utils;->WIFI_PIE:[I

    array-length p2, p1

    if-ge p0, p2, :cond_0

    .line 438
    aget p0, p1, p0

    return p0

    .line 417
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Wifi icon found for level: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isAudioModeOngoingCall(Landroid/content/Context;)Z
    .locals 2

    .line 481
    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 482
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1

    const v0, 0x1040212

    .line 394
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInService(Landroid/telephony/ServiceState;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 498
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getCombinedServiceState(Landroid/telephony/ServiceState;)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isNotInIwlan(Landroid/telephony/ServiceState;)Z
    .locals 2

    const/4 v0, 0x2

    .line 554
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 561
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 563
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v0

    :goto_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static isStorageManagerEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "ro.storage_manager.enabled"

    .line 467
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    .line 471
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "automatic_storage_manager_enabled"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 348
    sget-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Landroid/content/pm/Signature;

    .line 349
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getSystemSignature(Landroid/content/pm/PackageManager;)Landroid/content/pm/Signature;

    move-result-object v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    .line 351
    :cond_0
    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 354
    :cond_1
    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 355
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 357
    :cond_2
    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 358
    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 360
    :cond_3
    sget-object p1, Lcom/android/settingslib/Utils;->sSystemSignature:[Landroid/content/pm/Signature;

    aget-object v0, p1, v2

    if-eqz v0, :cond_4

    aget-object p1, p1, v2

    .line 361
    invoke-static {p2}, Lcom/android/settingslib/Utils;->getFirstSignature(Landroid/content/pm/PackageInfo;)Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sPermissionControllerPackageName:Ljava/lang/String;

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sServicesSystemSharedLibPackageName:Ljava/lang/String;

    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/settingslib/Utils;->sSharedSystemSharedLibPackageName:Ljava/lang/String;

    .line 364
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.android.printspooler"

    .line 365
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 366
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->isDeviceProvisioningPackage(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, v2

    :cond_6
    :goto_0
    return v1
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 1

    .line 459
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static updateLocationEnabled(Landroid/content/Context;ZII)V
    .locals 2

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_changer"

    .line 104
    invoke-static {v0, v1, p3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 108
    const-class p3, Landroid/location/LocationManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 109
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method
