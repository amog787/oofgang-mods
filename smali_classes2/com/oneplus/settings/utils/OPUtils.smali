.class public Lcom/oneplus/settings/utils/OPUtils;
.super Ljava/lang/Object;
.source "OPUtils.java"


# static fields
.field public static final GBGSERVICEPACKAGES:[Ljava/lang/String;

.field private static final LAUNCHER_FEATURE_URI:Landroid/net/Uri;

.field public static final UNIT_OF_STORAGE:[Ljava/lang/String;

.field public static final UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

.field public static isUstModeEnabled:Ljava/lang/Boolean;

.field public static mAppUpdated:Z

.field public static mIsExistCloudPackage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "(?<![\u5409\u5343\u5146\u592a])\u6bd4\u7279"

    const-string v1, "(?<![\u5409\u5343\u5146\u592a])\u5b57\u8282"

    const-string v2, "\u5409\u6bd4\u7279"

    const-string v3, "\u5409\u5b57\u8282"

    const-string v4, "\u5343\u6bd4\u7279"

    const-string v5, "\u5343\u5b57\u8282"

    const-string v6, "\u5146\u6bd4\u7279"

    const-string v7, "\u5146\u5b57\u8282"

    const-string v8, "\u592a\u6bd4\u7279"

    const-string v9, "\u592a\u5b57\u8282"

    .line 185
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

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

    .line 188
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    const-string v1, "com.oneplus.card"

    const-string v2, "com.oneplus.cloud"

    const-string v3, "com.oneplus.appupgrader"

    const-string v4, "com.oneplus.dirac.simplemanager"

    const-string v5, "com.oneplus.soundrecorder"

    const-string v6, "com.oneplus.sound.tuner"

    const-string v7, "com.google.android.gms"

    .line 191
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->GBGSERVICEPACKAGES:[Ljava/lang/String;

    .line 196
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const/4 v0, 0x0

    .line 218
    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 358
    sput-boolean v0, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    const-string v0, "content://net.oneplus.launcher.features"

    .line 3888
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->LAUNCHER_FEATURE_URI:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    .line 147
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendFODAnimAnalytics(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0

    .line 147
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendNaviGestureAnalytics(Landroid/content/Context;)V

    return-void
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    .line 1536
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1539
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 5

    .line 1513
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1515
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 1516
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1519
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1522
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1525
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1848
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getAccentColor(Landroid/content/Context;)I

    move-result v0

    .line 1849
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->oneplus_font_list_setting_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1851
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->oneplus_font_list_subtitle:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 1853
    invoke-static {p0, p0, v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->createColorStateList(IIII)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 8

    .line 1832
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x4

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, 0x10100a1

    aput v5, v4, v6

    aput-object v4, v2, v3

    new-array v4, v3, [I

    const v5, 0x101009e

    aput v5, v4, v6

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v4, v6, [I

    const/4 v7, 0x3

    aput-object v4, v2, v7

    new-array v1, v1, [I

    aput p0, v1, v6

    aput p1, v1, v3

    aput p2, v1, v5

    aput p3, v1, v7

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 1927
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static disableAospFaceUnlock(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.android.facelock"

    .line 1295
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 1296
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1299
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1302
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static disableCloundServiceApp(Landroid/content/Context;)V
    .locals 2

    .line 1394
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$4;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1412
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static dp2Px(Landroid/util/DisplayMetrics;F)I
    .locals 1

    const/4 v0, 0x1

    .line 1922
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static enableAppBgService(Landroid/content/Context;)V
    .locals 2

    .line 1350
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1372
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static enablePackageInstaller(Landroid/content/Context;)V
    .locals 2

    .line 1460
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$6;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static formatMemoryDisplay(J)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    .line 1631
    div-long/2addr p0, v0

    const-wide/16 v0, 0x200

    .line 1632
    div-long v2, p0, v0

    long-to-int v2, v2

    .line 1633
    rem-long v0, p0, v0

    long-to-int v0, v0

    if-nez v2, :cond_0

    .line 1636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "MB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x100

    const-string p1, "GB"

    const/high16 v1, 0x3f000000    # 0.5f

    if-le v0, p0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 1640
    rem-int/lit8 p0, v2, 0x2

    if-nez p0, :cond_1

    .line 1641
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1643
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1646
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v0, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .locals 4

    .line 1566
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1567
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010435

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1569
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_quick_launch_apps"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getApnEditable()Z
    .locals 3

    .line 3582
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3583
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_apn_editable_enable"

    const/4 v2, 0x0

    .line 3582
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2526
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 2528
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2530
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2533
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2513
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    .line 2515
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 2517
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2520
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 409
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 412
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 415
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getApplicationInfoByUserId(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1

    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 426
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 425
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 428
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2336
    invoke-virtual {p0, p1, p1}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2337
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 2336
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getCorpUserInfo(Landroid/content/Context;)Landroid/content/pm/UserInfo;
    .locals 4

    const-string v0, "user"

    .line 2843
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 2844
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    .line 2847
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2848
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 2851
    :cond_1
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 2856
    :cond_2
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, v0, :cond_0

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 2

    .line 2683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .line 2689
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public static getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 2889
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 2890
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 2891
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    .line 2892
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFingerprintScaleAnimStep(Landroid/content/Context;)I
    .locals 1

    .line 1285
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1286
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static getGameModeAppListString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2097
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gamemode_removed_packages_by_user"

    .line 2096
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2099
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getGameModeAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2092
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLang()Ljava/lang/String;
    .locals 2

    .line 2705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOPSafeUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 2694
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "query_oneplus_security_uuid"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "op_security_uuid"

    .line 2696
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2699
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getOtherPackageString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "string"

    .line 3971
    invoke-virtual {p0, p2, v0, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3973
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2186
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickLaunchShortcutsAccount(Landroid/content/Context;)I
    .locals 1

    .line 2201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_quick_launch_apps"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    .line 2204
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2205
    array-length p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenShortcut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2195
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickMiniProgrameString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2170
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenWxMiniProgram:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickMiniProgrameconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2221
    sget v0, Lcom/android/settings/R$drawable;->op_wechat_ridecode:I

    .line 2229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenQuickPay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2179
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 2233
    sget v0, Lcom/android/settings/R$drawable;->op_wechat_qrcode:I

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2245
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->op_alipay_scanning:I

    goto :goto_0

    .line 2242
    :cond_1
    sget v0, Lcom/android/settings/R$drawable;->op_alipay_qrcode:I

    goto :goto_0

    .line 2239
    :cond_2
    sget v0, Lcom/android/settings/R$drawable;->op_wechat_scanning:I

    .line 2252
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getQuickReplyAppListString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2036
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_quickreply_im_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2038
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static getQuickReplyAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2031
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 399
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 401
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 402
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/content/pm/ResolveInfo;

    :cond_0
    return-object v2
.end method

.method public static getSymbolDeviceName(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    const-string v0, "+"

    const-string v1, "<small><sup>+</sup></small>"

    .line 3996
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0
.end method

.method public static getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextAccentColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 1545
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->convertToColorInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p0, 0x0

    .line 1556
    aget v2, v1, p0

    const/4 v3, 0x1

    .line 1558
    aget v4, v1, v3

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x2

    .line 1560
    aget v1, v1, v5

    const v6, 0x3f333333    # 0.7f

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [F

    aput v2, v0, p0

    aput v4, v0, v3

    aput v1, v0, v5

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->convertToRGB(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getThemeMode()I
    .locals 1

    .line 1753
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getThemeMode(Landroid/content/ContentResolver;)I
    .locals 0

    .line 1744
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode()I

    move-result p0

    return p0
.end method

.method public static getTotalMemory()Ljava/lang/String;
    .locals 6

    const-string v0, "/proc/meminfo"

    const-string v1, ""

    const/4 v2, 0x0

    .line 1660
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1661
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1662
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v1, :cond_0

    .line 1675
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1677
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1683
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1685
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v2

    :cond_0
    const/16 v2, 0xa

    .line 1666
    :try_start_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1667
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1668
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1669
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1675
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 1677
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1683
    :goto_2
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 1685
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v3, v2

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    .line 1671
    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v0, :cond_1

    .line 1675
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    .line 1677
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    if-eqz v3, :cond_2

    .line 1683
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 1694
    :cond_2
    :goto_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1695
    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v1

    move-object v2, v0

    :goto_6
    if-eqz v2, :cond_3

    .line 1675
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    .line 1677
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_7
    if-eqz v3, :cond_4

    .line 1683
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_8

    :catch_9
    move-exception v0

    .line 1685
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1691
    :cond_4
    :goto_8
    throw v1
.end method

.method public static handleTimeSummary(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 4033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleTimeSummary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4037
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isEn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4038
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4040
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hr"

    .line 4041
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "hrs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4042
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "min"

    .line 4044
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "mins"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4045
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public static hasMultiApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 2757
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x3e7

    .line 2759
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 2761
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 2762
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2767
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasMultiApp ,"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hasMultiApp:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static hasMultiAppProfiles(Landroid/os/UserManager;)Z
    .locals 2

    .line 2742
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 2743
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static initHwId()Ljava/lang/String;
    .locals 7

    .line 3814
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isLTProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "22"

    goto/16 :goto_2

    .line 3816
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, "ro.boot.project_name"

    .line 3819
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 3820
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "20809"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v5

    goto :goto_0

    :sswitch_1
    const-string v2, "19863"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v2, "19861"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "19855"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_4
    const-string v2, "18825"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    const-string v0, "ro.boot.hw_version"

    const-string v1, ""

    .line 3835
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const-string v0, "53"

    goto :goto_2

    :cond_4
    const-string v0, "15"

    goto :goto_2

    :cond_5
    const-string v0, "13"

    goto :goto_2

    :cond_6
    const-string v0, "31"

    goto :goto_2

    :cond_7
    :goto_1
    const-string v0, "10"

    .line 3839
    :goto_2
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hw_version_ui"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2ccccf4 -> :sswitch_4
        0x2cd41b0 -> :sswitch_3
        0x2cd41cb -> :sswitch_2
        0x2cd41cd -> :sswitch_1
        0x2d74143 -> :sswitch_0
    .end sparse-switch
.end method

.method public static installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installMultiApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2811
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0

    const/16 p2, -0x6f

    if-eq p0, p2, :cond_2

    const/4 p2, -0x3

    if-eq p0, p2, :cond_1

    const/4 p2, 0x1

    if-eq p0, p2, :cond_0

    .line 2831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Could not install mobile device management app on managed profile. Unknown status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2815
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "success"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p0, "Could not install mobile device management app on managed profile because the package could not be found"

    .line 2826
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Could not install mobile device management app on managed profile because the user is restricted"

    .line 2820
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "This should not happen."

    .line 2837
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static is18857Project()Z
    .locals 3

    .line 3484
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3485
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_cn:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3484
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3489
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_in:I

    .line 3490
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3488
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3494
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_eu:I

    .line 3495
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3493
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3499
    invoke-virtual {v1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_oneplus_model_18857_for_us:I

    .line 3500
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3498
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static is2KResolution(Landroid/content/Context;)Z
    .locals 1

    .line 3719
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 3720
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3721
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, p0

    const p0, 0x384000

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static is7TProProducts()Z
    .locals 2

    const-string v0, "ro.boot.project_codename"

    .line 3357
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3358
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hotdog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static is7TProducts()Z
    .locals 2

    const-string v0, "ro.boot.project_codename"

    .line 3349
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hotdogb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 0

    .line 469
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p1, :cond_0

    .line 472
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 476
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x10000

    .line 477
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 479
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isAllowSendAppTracker(Landroid/content/Context;)Z
    .locals 2

    .line 3032
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_join_user_plan_settings"

    const/4 v1, 0x0

    .line 3031
    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isAndroidModeOn(Landroid/content/ContentResolver;)Z
    .locals 1

    .line 1774
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAppExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.oneplus.cloud"

    .line 368
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    sget-object v0, Lcom/oneplus/settings/utils/OPUtils;->mIsExistCloudPackage:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 370
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 373
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p0, Lcom/oneplus/settings/utils/OPUtils;->mIsExistCloudPackage:Ljava/lang/Boolean;

    goto :goto_0

    .line 375
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Lcom/oneplus/settings/utils/OPUtils;->mIsExistCloudPackage:Ljava/lang/Boolean;

    .line 377
    :goto_0
    sget-object p0, Lcom/oneplus/settings/utils/OPUtils;->mIsExistCloudPackage:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 379
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 382
    :cond_2
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isAppPakExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 444
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 447
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 450
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isApplicationEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1378
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1379
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 1380
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1384
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static isAviciiProducts()Z
    .locals 2

    const-string v0, "ro.boot.project_codename"

    .line 3365
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3366
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "avicii"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBeta()Z
    .locals 3

    const-string v0, "ro.build.beta"

    .line 2639
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.build.alpha"

    .line 2641
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2643
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isBetaRom()Z
    .locals 3

    const-string v0, "ro.build.beta"

    .line 2626
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.op.ga"

    .line 2628
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    .line 2630
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlackModeOn(Landroid/content/ContentResolver;)Z
    .locals 1

    .line 1768
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isContainSymbol(Ljava/lang/String;)Z
    .locals 1

    .line 3988
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "T+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 3966
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDreProducts()Z
    .locals 3

    const-string v0, "ro.boot.project_codename"

    .line 3377
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3378
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->op_dre_product:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3379
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEF009Project()Z
    .locals 2

    const-string v0, "ro.boot.project_name"

    .line 3980
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "20809"

    .line 3981
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEUVersion()Z
    .locals 2

    const-string v0, "ro.build.eu"

    const-string v1, "false"

    .line 3545
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 3546
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEightSeriesProducts()Z
    .locals 2

    .line 3373
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "kona"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEn(Landroid/content/Context;)Z
    .locals 1

    .line 1736
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1737
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "en"

    .line 1738
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEucalyptusProducts()Z
    .locals 3

    const-string v0, "ro.boot.project_codename"

    .line 3386
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3387
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->op_eucalyptus_product:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3388
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isFaceUnlockEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1502
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.android.facelock"

    .line 1504
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1507
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public static isFingerprintNeedEnrollTime16(Landroid/content/Context;)Z
    .locals 1

    .line 1715
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5000"

    .line 1716
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "ONEPLUS A5010"

    .line 1717
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z
    .locals 2

    const-string p0, "persist.vendor.oem.fp.version"

    const-string v0, "5"

    .line 1705
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "4"

    .line 1708
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isGesturalEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 3275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e008e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGuaProject()Z
    .locals 5

    .line 3456
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3457
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_guacamole_project:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3459
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3460
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3461
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isGuestMode()Z
    .locals 1

    .line 484
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isH2()Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 1198
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isHDProject()Z
    .locals 5

    .line 3443
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3444
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_hd_project:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3446
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3447
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3448
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1965
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 1966
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1967
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 1969
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 1971
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 1973
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 1974
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 1976
    :cond_3
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 1977
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public static isInRemovedGameAppListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z
    .locals 1

    .line 2108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gamemode_removed_packages_by_user"

    .line 2107
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2111
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInSlaDownLoadOpenAppsListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z
    .locals 1

    .line 3772
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_open_apps_list"

    .line 3771
    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3773
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3774
    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isIndia()Z
    .locals 2

    .line 1202
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getSwType()Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    move-result-object v0

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;->IN:Lcom/oneplus/custom/utils/OpCustomizeSettings$SW_TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLTProducts()Z
    .locals 3

    const-string v0, "ro.boot.project_codename"

    .line 3339
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3341
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->op_lt_product:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3342
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->op_lpt_product:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isLTRLayout(Landroid/content/Context;)Z
    .locals 0

    .line 1942
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 1943
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLaboratoryFeatureExist()Z
    .locals 14

    const-string v0, "oneplus_lab_feature"

    const/4 v1, 0x0

    .line 2935
    :try_start_0
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 2936
    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 2938
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 2941
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v1

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 2942
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 2944
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2945
    sget-object v6, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2946
    invoke-virtual {v6, v7, v1}, Landroid/app/Application;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    .line 2949
    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ";"

    .line 2950
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v7, v1

    .line 2952
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_1

    .line 2953
    aget-object v8, v5, v7

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2954
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x3

    aget-object v11, v8, v10

    const-string v12, "string"

    iget-object v13, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 2955
    invoke-virtual {v9, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    .line 2958
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 2959
    :cond_2
    aget-object v8, v8, v10

    .line 2960
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 2963
    :cond_3
    sget-object v9, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v9}, Lcom/oneplus/settings/utils/OPUtils;->isSurportSimNfc(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "oneplus_nfc_security_module_key"

    .line 2965
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    const-string v9, "OPLabFeatureActivity"

    .line 2970
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fetchLockedAppListByPackageInfo featureKey "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMotionGraphicsCompensation()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "op_iris_video_memc_extreme_status"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    const-string v9, "oneplus_dc_dimming_value"

    .line 2976
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDC()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v3

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    const-string v2, "OPUtils-isLaboratoryFeatureExist"

    const-string v3, "some unknown error happened."

    .line 2986
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v1

    :cond_7
    if-eqz v3, :cond_8

    const-string v0, "true"

    goto :goto_4

    :cond_8
    const-string v0, "false"

    :goto_4
    const-string v1, "OPUtils-isLaboratoryFeatureExist:"

    .line 2990
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static isLargerFontSize(Landroid/content/Context;)Z
    .locals 1

    .line 3702
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 3704
    iget p0, p0, Landroid/content/res/Configuration;->fontScale:F

    const v0, 0x3f933333    # 1.15f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLargerScreenZoom(Landroid/content/Context;)Z
    .locals 3

    .line 3709
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3711
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->is2KResolution(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 3712
    iget p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3714
    :cond_1
    iget p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static isMEARom()Z
    .locals 2

    const-string v0, "ro.build.mea"

    .line 3761
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 3762
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMultiAppUser()Z
    .locals 2

    .line 2752
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNAVersion()Z
    .locals 2

    const-string v0, "ro.build.region"

    const-string v1, ""

    .line 3551
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NA"

    .line 3552
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 434
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 436
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isO2()Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 1193
    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isOP3()Z
    .locals 2

    const-string v0, "ro.boot.project_name"

    .line 1214
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "15801"

    .line 1213
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOP3T()Z
    .locals 2

    const-string v0, "ro.boot.project_name"

    .line 1219
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "15811"

    .line 1218
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOP_19_2nd()Z
    .locals 5

    .line 3647
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3648
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_19_2nd_projects:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3650
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3651
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3652
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isOnePlusBrand()Z
    .locals 2

    .line 3952
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "OnePlus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isProductRTTSupport()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput v2, v0, v1

    .line 3216
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isProductSwarpChargSupport()Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xee

    aput v2, v0, v1

    .line 3212
    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method public static isQuickPayModel(Lcom/oneplus/settings/better/OPAppModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 2153
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 2156
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2157
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2158
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2159
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2160
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "4"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isQuickReplyAppSelected(Lcom/oneplus/settings/better/OPAppModel;)Z
    .locals 2

    .line 1987
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1989
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 1990
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1991
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1992
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isQuickReplyAppSelected(Ljava/lang/String;)Z
    .locals 2

    .line 2002
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2004
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    .line 2005
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2006
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2007
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSM8150Products()Z
    .locals 2

    .line 3326
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "msmnile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSM8X50Products()Z
    .locals 3

    .line 3331
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "msmnile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3332
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v2, "kona"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 3333
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isHDProject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSideEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 3280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gesture_button_side_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSupportAlwaysOnDisplay()Z
    .locals 1

    const-string v0, "OP_FEATURE_ALWAYS_ON_DISPLAY"

    .line 3085
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportAppSecureRecommd()Z
    .locals 1

    const-string v0, "OP_FEATURE_INSTALL_FROM_MARKET"

    .line 3074
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportAppsDisplayInFullscreen()Z
    .locals 1

    const-string v0, "OP_FEATURE_APPS_DISPLAY_IN_FULLSCREEN"

    .line 3396
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportAskAlexa()Z
    .locals 1

    const-string v0, "OP_FEATURE_DOUBLE_TAP_POWER_KEY_ALEXA"

    .line 3026
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportC427()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "ro.boot.opcarrier"

    .line 253
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "C427"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isSupportC88()Z
    .locals 2

    .line 4015
    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->C88:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCustomBlinkLight()Z
    .locals 1

    const-string v0, "OP_FEATURE_CUSTOM_BLINK_LIGHT"

    .line 3208
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCustomFingerprint()Z
    .locals 1

    const-string v0, "OP_FEATURE_SUPPORT_CUSTOM_FINGERPRINT"

    .line 3192
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportCustomFingerprint2()Z
    .locals 1

    const-string v0, "OP_FEATURE_SUPPORT_CUSTOM_FINGERPRINT"

    .line 3192
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportDC()Z
    .locals 1

    const-string v0, "OP_FEATURE_MM_DC_SUPPORT"

    .line 3090
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDynamicEnrollAnimation()Z
    .locals 5

    .line 3470
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3474
    :cond_0
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v2, "kona"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3475
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "msmnile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "ro.boot.project_codename"

    .line 3476
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3477
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "lemonade"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 3480
    :cond_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "HD1925"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method public static isSupportEarphoneMode()Z
    .locals 1

    const-string v0, "OP_FEATURE_EARPHONE_MODE"

    .line 3321
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFontStyleSetting()Z
    .locals 6

    .line 2651
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2652
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2653
    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 2654
    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$array;->oneplus_font_style_support_language:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " country = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FontStyleSetting"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v4, v0

    .line 2658
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_1

    .line 2659
    aget-object v5, v2, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "support language = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static isSupportGameAdMode()Z
    .locals 1

    const-string v0, "OP_FEATURE_AD_MODE"

    .line 3245
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGameModeNetBoost()Z
    .locals 1

    const-string v0, "OP_FEATURE_GAMEMODE_NETBOOST"

    .line 3060
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGameModePowerSaver()Z
    .locals 1

    const-string v0, "OP_FEATURE_GAMEMODE_POWERSAVER"

    .line 3204
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGesturePullNotificationBar()Z
    .locals 1

    const-string v0, "OP_FEATURE_SHOW_NOTIFICATION_BAR_BY_FINGERPRINT_SENSOR"

    .line 3051
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGoogleCommSuit()Z
    .locals 1

    const-string v0, "OP_FEATURE_GOOGLE_COMM_SUIT"

    .line 3797
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGota()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportHearingAid()Z
    .locals 1

    const-string v0, "OP_FEATURE_MM_HAC"

    .line 3041
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportHighVsync()Z
    .locals 1

    const-string v0, "OP_FEATURE_HIGH_VSYNC"

    .line 3766
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportHolePunchFrontCam()Z
    .locals 1

    const-string v0, "OP_FEATURE_HOLE_PUNCH_FRONT_CAM"

    .line 3012
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportMMDisplayColorScreenMode()Z
    .locals 1

    const-string v0, "OP_FEATURE_MM_DISPLAY_COLOR_SCREEN_MODE"

    .line 3591
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportMotionGraphicsCompensation()Z
    .locals 1

    const-string v0, "OP_FEATURE_MM_IRIS_CHIP_SUPPORT"

    .line 3007
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportMultiScreenResolution(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "display"

    .line 3610
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 3611
    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    .line 3612
    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3613
    array-length p0, p0

    const/4 v1, 0x2

    if-le p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSupportNewGesture()Z
    .locals 3

    .line 3226
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3225
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gesture_button_launcher"

    const/4 v2, 0x0

    .line 3224
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public static isSupportNewPlanPowerOffAlarm()Z
    .locals 1

    const-string v0, "OP_FEATURE_NEW_PLAN_POWEWR_OFF_ALARM"

    .line 3069
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportNfcUicc()Z
    .locals 3

    const-string v0, "persist.vendor.radio.uicc_se_enabled"

    const/4 v1, 0x0

    .line 3786
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSupportNfcUicc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSupportNotificationLight()Z
    .locals 1

    const-string v0, "OP_FEATURE_NOTIFICATION_LIGHT"

    .line 3517
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportOPSLA()Z
    .locals 1

    const-string v0, "OP_FEATURE_OPSLA"

    .line 3782
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportPocketMode()Z
    .locals 1

    const-string v0, "OP_FEATURE_ENABLE_POCKETMODE_SWITCH"

    .line 3254
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportQuickLaunch()Z
    .locals 1

    const-string v0, "OP_FEATURE_QUICK_LAUNCH"

    .line 3220
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportQuickReply()Z
    .locals 1

    const-string v0, "OP_FEATURE_QUICK_REPLY"

    .line 3241
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportReadingModeInterpolater()Z
    .locals 1

    const-string v0, "OP_FEATURE_READING_MODE_INTERPOLATER"

    .line 3522
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenCutting()Z
    .locals 1

    const-string v0, "OP_FEATURE_CAMERA_NOTCH"

    .line 3056
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenDisplayAdaption()Z
    .locals 1

    const-string v0, "OP_FEATURE_SCREEN_COMPAT"

    .line 3081
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportScreenRefreshRate()Z
    .locals 1

    const-string v0, "OP_FEATURE_SCREEN_REFRESH_RATE"

    .line 3230
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSideFingerprint()Z
    .locals 2

    const-string v0, "persist.vendor.oem.fp.version"

    const-string v1, ""

    .line 3199
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3626"

    .line 3200
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1020"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportSleepStandby()Z
    .locals 1

    const-string v0, "OP_FEATURE_OPSM"

    .line 3180
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSmartBoost()Z
    .locals 1

    const-string v0, "OP_FEATURE_SMART_BOOST"

    .line 3513
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSocTriState()Z
    .locals 1

    const-string v0, "OP_FEATURE_MM_ALERTSLIDER"

    .line 2996
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportSortByTrack()Z
    .locals 3

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 4019
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1e

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportSystemProductionRingtone()Z
    .locals 3

    const-string v0, "ro.product.first_api_level"

    const/4 v1, 0x0

    .line 3596
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportTapCoexist()Z
    .locals 1

    const-string v0, "OP_FEATURE_ENABLE_TAP_COEXIST"

    .line 3019
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportTrueColorMode(Landroid/content/Context;)Z
    .locals 1

    .line 3601
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 3602
    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportUss()Z
    .locals 2

    const-string v0, "OP_FEATURE_USS"

    .line 3540
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.opcarrier"

    .line 3541
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sprint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportUssOnly()Z
    .locals 2

    .line 3792
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.project_name"

    .line 3793
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18825"

    .line 3792
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportUstMode()Z
    .locals 2

    .line 235
    sget-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "OP_FEATURE_UST_MODE"

    .line 241
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.boot.opcarrier"

    .line 242
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tmo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportC427()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 246
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    .line 249
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/OPUtils;->isUstModeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isSupportUstUnify()Z
    .locals 1

    const-string v0, "OP_FEATURE_UNIFIED_DEVICE"

    .line 3808
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportVideoEnhancer()Z
    .locals 1

    const-string v0, "OP_FEATURE_MM_VIDEO_ENHANCEMENT"

    .line 3001
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportXCamera()Z
    .locals 1

    const-string v0, "OP_FEATURE_MOTOR_CONTROL"

    .line 3249
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportXVibrate()Z
    .locals 1

    const-string v0, "OP_FEATURE_X_LINEAR_VIBRATION_MOTOR"

    .line 3236
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isSupportZVibrationMotor()Z
    .locals 1

    const-string v0, "OP_FEATURE_Z_VIBRATION_MOTOR"

    .line 3509
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSurportBackFingerprint(Landroid/content/Context;)Z
    .locals 1

    .line 1275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSurportGesture20(Landroid/content/Context;)Z
    .locals 1

    .line 1241
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oem.blackScreenGesture_2.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSurportNavigationBarOnly(Landroid/content/Context;)Z
    .locals 1

    .line 1280
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11100c9

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isSurportNoNeedPowerOnPassword(Landroid/content/Context;)Z
    .locals 1

    .line 1246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oem.no_need_power_on_password.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSurportProductInfo(Landroid/content/Context;)Z
    .locals 1

    .line 1261
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo16859(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1262
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo17801(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSurportProductInfo16859(Landroid/content/Context;)Z
    .locals 1

    .line 1251
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oem.product_info_cheeseburger.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSurportProductInfo17801(Landroid/content/Context;)Z
    .locals 1

    .line 1256
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oem.product_info_dumpling.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSurportSimNfc(Landroid/content/Context;)Z
    .locals 1

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oem.sim_nfc.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isThemeOn(Landroid/content/ContentResolver;)Z
    .locals 2

    const-string v0, "oem_special_theme"

    const/4 v1, 0x0

    .line 1785
    invoke-static {p0, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isWeChatMiniProgrameModel(Lcom/oneplus/settings/better/OPAppModel;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    .line 2139
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 2142
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isWhiteModeOn(Landroid/content/ContentResolver;)Z
    .locals 0

    .line 1762
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->getThemeMode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isZh(Landroid/content/Context;)Z
    .locals 1

    .line 1726
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1727
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    .line 1728
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isnoDisplaySarValueProject()Z
    .locals 5

    .line 3526
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3527
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_no_display_sar_value_project:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 3529
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 3530
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3532
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 14

    move-object v0, p0

    .line 2295
    invoke-static {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2300
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "launcherapps"

    .line 2302
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_4

    .line 2304
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 2305
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2308
    :cond_1
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2309
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2310
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2312
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2313
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2315
    :cond_3
    new-instance v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2316
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    move-object v8, v2

    move/from16 v12, p3

    invoke-direct/range {v8 .. v13}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2317
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/better/OPAppModel;->setAppLabel(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2318
    invoke-virtual {v2, v1}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 2319
    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    .line 2320
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2322
    :try_start_0
    invoke-virtual {v4, v7, v5}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2324
    invoke-virtual {v2, v0}, Lcom/oneplus/settings/better/OPAppModel;->setShortCutIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static loadShortcutInfoByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 16

    move-object/from16 v0, p0

    .line 2476
    invoke-static/range {p0 .. p1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 2481
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "launcherapps"

    .line 2483
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_4

    .line 2485
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 2486
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v8

    .line 2487
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2488
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v8

    .line 2490
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2491
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 2493
    :cond_2
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2494
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v11

    .line 2495
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    move-object v10, v1

    move/from16 v14, p3

    invoke-direct/range {v10 .. v15}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    const/4 v2, 0x1

    .line 2496
    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 2497
    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isInQuickLaunchList(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setSelected(Z)V

    .line 2498
    invoke-static/range {p0 .. p1}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2501
    :try_start_0
    invoke-virtual {v4, v7, v5}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2502
    invoke-virtual {v1, v0}, Lcom/oneplus/settings/better/OPAppModel;->setShortCutIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2504
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static methodIsMigrated(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "OPUtils"

    .line 3892
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "minus_one_page_content"

    const-string v3, "news_only"

    .line 3893
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 3895
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v3, Lcom/oneplus/settings/utils/OPUtils;->LAUNCHER_FEATURE_URI:Landroid/net/Uri;

    const-string v4, "checkFeature"

    const-string v5, "minus_one_page"

    invoke-virtual {p0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v1, -0x1

    const-string v3, "result_code"

    .line 3902
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "methodIsMigrated "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const-string v4, "result_message"

    invoke-virtual {p0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "is_supported"

    .line 3908
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "methodIsMigrated hideShelfOption"

    .line 3911
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "methodIsMigrated bundle null"

    .line 3919
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    .line 3898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "methodIsMigrated e1 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static notifyMultiPackageRemoved(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2

    .line 3750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMultiPackageRemoved pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " removed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "oneplus.intent.action.MULTI_APP_CHANGED"

    .line 3752
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    .line 3753
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "package_uid"

    .line 3754
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "status_removed"

    .line 3755
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.oneplus.gamespace"

    .line 3756
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3757
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static parseAllQuickLaunchStrings(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2351
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2354
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_quick_launch_apps"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2356
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2357
    invoke-static/range {p0 .. p0}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2358
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, ","

    .line 2359
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move v6, v5

    .line 2360
    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_f

    .line 2361
    aget-object v7, v3, v6

    const-string v8, "OpenApp:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, ":"

    const-string v9, ";"

    const/4 v10, 0x1

    if-eqz v7, :cond_2

    .line 2362
    aget-object v7, v3, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2363
    aget-object v9, v7, v5

    aget-object v11, v7, v5

    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2364
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2365
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-nez v9, :cond_0

    goto :goto_1

    .line 2373
    :cond_0
    aget-object v7, v7, v10

    .line 2374
    new-instance v9, Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2375
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    const-string v14, ""

    move-object v11, v9

    move-object v12, v8

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2380
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2379
    invoke-static {v0, v8, v7}, Lcom/oneplus/settings/utils/OPUtils;->getApplicationInfoByUserId(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2377
    invoke-static {v1, v7}, Lcom/oneplus/settings/utils/OPUtils;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2381
    invoke-virtual {v9, v5}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 2382
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2367
    :cond_1
    :goto_1
    aget-object v7, v3, v6

    .line 2368
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 2369
    aget-object v8, v3, v6

    .line 2370
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v10

    .line 2369
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :goto_2
    move v7, v5

    goto/16 :goto_9

    .line 2383
    :cond_2
    aget-object v7, v3, v6

    const-string v11, "OpenShortcut:"

    .line 2384
    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const/4 v11, 0x2

    if-eqz v7, :cond_6

    .line 2385
    aget-object v7, v3, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2386
    aget-object v9, v7, v5

    aget-object v12, v7, v5

    .line 2387
    invoke-virtual {v12, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v10

    .line 2386
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2388
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2389
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_3

    .line 2397
    :cond_3
    aget-object v9, v7, v10

    .line 2398
    aget-object v7, v7, v11

    .line 2401
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2399
    invoke-static {v0, v8, v9, v7}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutInfoByPackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v7

    if-nez v7, :cond_4

    .line 2407
    aget-object v7, v3, v6

    .line 2408
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 2409
    aget-object v8, v3, v6

    .line 2410
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v10

    .line 2409
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2413
    :cond_4
    invoke-virtual {v7, v10}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 2414
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2391
    :cond_5
    :goto_3
    aget-object v7, v3, v6

    .line 2392
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 2393
    aget-object v8, v3, v6

    .line 2394
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    add-int/2addr v8, v10

    .line 2393
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2415
    :cond_6
    aget-object v7, v3, v6

    const-string v12, "OpenQuickPay:"

    .line 2416
    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2417
    aget-object v7, v3, v6

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2418
    aget-object v9, v7, v5

    aget-object v12, v7, v5

    .line 2419
    invoke-virtual {v12, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v10

    .line 2418
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2420
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 2421
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-nez v9, :cond_7

    goto :goto_6

    .line 2429
    :cond_7
    aget-object v15, v7, v10

    .line 2430
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2431
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/settings/R$array;->oneplus_quicklaunch_ways_name:I

    .line 2432
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 2433
    new-instance v10, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v14, 0x4

    if-le v7, v14, :cond_8

    move v12, v14

    goto :goto_4

    :cond_8
    move v12, v7

    .line 2434
    :goto_4
    aget-object v9, v9, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v10

    move-object v13, v8

    move v5, v14

    move-object v14, v9

    invoke-direct/range {v12 .. v17}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    if-ne v7, v5, :cond_9

    .line 2437
    invoke-static {v0, v8}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2439
    :cond_9
    invoke-static {v0, v7}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2442
    :goto_5
    invoke-virtual {v10, v11}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 2443
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2423
    :cond_a
    :goto_6
    aget-object v5, v3, v6

    .line 2424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2425
    aget-object v7, v3, v6

    .line 2426
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v10

    .line 2425
    invoke-virtual {v4, v5, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 2444
    :cond_b
    aget-object v5, v3, v6

    const-string v7, "OpenWxMiniProgram:"

    .line 2445
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2446
    aget-object v5, v3, v6

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 2447
    aget-object v9, v5, v7

    aget-object v11, v5, v7

    .line 2448
    invoke-virtual {v11, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v10

    .line 2447
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2449
    invoke-static {v0, v12}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2450
    invoke-static {v0, v12}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-nez v8, :cond_c

    goto :goto_7

    .line 2458
    :cond_c
    aget-object v14, v5, v10

    .line 2459
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2460
    new-instance v8, Lcom/oneplus/settings/better/OPAppModel;

    sget v9, Lcom/android/settings/R$string;->oneplus_quickpay_way_wecaht_ridecode:I

    .line 2461
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v8

    invoke-direct/range {v11 .. v16}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 2463
    invoke-static {v0, v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x3

    .line 2465
    invoke-virtual {v8, v5}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 2466
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 2452
    :cond_d
    :goto_7
    aget-object v5, v3, v6

    .line 2453
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2454
    aget-object v8, v3, v6

    .line 2455
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/2addr v8, v10

    .line 2454
    invoke-virtual {v4, v5, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v7, 0x0

    :goto_9
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto/16 :goto_0

    .line 2470
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 2

    .line 3095
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3098
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static parseLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 3407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<a href=\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</a>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3409
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    check-cast p0, Landroid/text/Spannable;

    .line 3410
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    .line 3411
    const-class p2, Landroid/text/style/URLSpan;

    const/4 p3, 0x0

    invoke-interface {p0, p3, p1, p2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    .line 3412
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3413
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 3414
    array-length v0, p1

    :goto_0
    if-ge p3, v0, :cond_0

    aget-object v1, p1, p3

    .line 3415
    new-instance v2, Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 3416
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 3417
    invoke-interface {p0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/16 v4, 0x21

    .line 3416
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public static removeRepeatedStrings(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2053
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, ";"

    .line 2056
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2057
    new-instance v2, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2058
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2059
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2060
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2062
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 2065
    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeSomeEntryAndValue(Landroidx/preference/ListPreference;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 3927
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 3928
    invoke-virtual {p0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 3929
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 3932
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3933
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 3934
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 3935
    aget-object v6, v0, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3936
    aget-object v6, v0, v5

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3937
    aget-object v6, v1, v5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3940
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 3941
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 3942
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_4

    .line 3943
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    aput-object v1, p1, v4

    .line 3944
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3946
    :cond_4
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 3947
    invoke-virtual {p0, v0}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static replaceFileSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 294
    :goto_0
    sget-object v1, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 295
    aget-object v1, v1, v0

    sget-object v2, Lcom/oneplus/settings/utils/OPUtils;->UNIT_OF_STORAGE_REPLACE:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static replaceListViewForListFragment(Landroidx/fragment/app/ListFragment;)V
    .locals 10

    .line 3846
    invoke-virtual {p0}, Landroidx/fragment/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 3847
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3852
    :cond_0
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3854
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;-><init>(Landroid/content/Context;)V

    .line 3855
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3857
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 3858
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 3859
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    const/4 v3, 0x0

    .line 3860
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setSaveEnabled(Z)V

    .line 3861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/settings/R$layout;->spring_preference_listview:I

    const/4 v6, 0x0

    .line 3862
    invoke-virtual {v4, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/edgeeffect/SpringListView;

    .line 3863
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const v5, 0x102000a

    .line 3864
    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setId(I)V

    .line 3865
    invoke-virtual {v0, v5}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->addSpringView(I)V

    .line 3866
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v7, v8}, Lcom/oneplus/settings/utils/OPUtils;->dip2px(Landroid/content/Context;F)I

    move-result v7

    .line 3867
    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v9

    .line 3866
    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 3868
    invoke-virtual {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V

    .line 3869
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3871
    :try_start_0
    const-class v0, Landroidx/fragment/app/ListFragment;

    const-string v1, "mList"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3872
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3873
    invoke-virtual {v0, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3875
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 3879
    :goto_0
    :try_start_1
    const-class v0, Landroidx/fragment/app/ListFragment;

    const-string v1, "ensureList"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 3880
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 3881
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 3883
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static resetDeviceNameIfInvalid(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "ro.display.series"

    .line 2871
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_modified_devicename"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2876
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_oneplus_devicename"

    .line 2875
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 2877
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2879
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2878
    invoke-static {p0, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public static restoreBackupEntranceInLauncher(Landroid/content/Context;)V
    .locals 2

    .line 1307
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/utils/OPUtils$2;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1346
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static saveGameModeRemovedAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_gamemode_removed_packages_by_user"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static savePINPasswordLength(Lcom/android/internal/widget/LockPatternUtils;II)V
    .locals 3

    .line 3638
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object p0

    const-string v0, "lockscreen.pin_password_length"

    int-to-long v1, p1

    invoke-interface {p0, v0, v1, v2, p2}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "saveLong error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3642
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "savePINPasswordLength"

    .line 3641
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2540
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_quick_launch_apps"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static saveQuickReplyAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 2046
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2048
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->removeRepeatedStrings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "op_quickreply_im_list"

    .line 2046
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2049
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickReply()V

    return-void
.end method

.method public static sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 3558
    invoke-static {}, Lcom/oneplus/settings/utils/AppTrackerHelper;->getInstance()Lcom/oneplus/settings/utils/AppTrackerHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/oneplus/settings/utils/AppTrackerHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eventname : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " label : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppTracker Analytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3565
    invoke-static {}, Lcom/oneplus/settings/utils/AppTrackerHelper;->getInstance()Lcom/oneplus/settings/utils/AppTrackerHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/settings/utils/AppTrackerHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eventname : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " label : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppTracker Analytics"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1153
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1127
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1130
    :cond_0
    invoke-static {p0, p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OPSettings"

    .line 1131
    invoke-static {v0, p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTracker(Ljava/lang/String;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1142
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForAccentColor()V
    .locals 3

    .line 709
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 711
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_white_mode_accent_color_index"

    const/4 v2, 0x0

    .line 710
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "theme_accent_color_white"

    .line 709
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 713
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 715
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode_accent_color_index"

    .line 714
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "theme_accent_color_black"

    .line 713
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForAllSettings()V
    .locals 4

    .line 1010
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/utils/OPUtils$1;

    invoke-direct {v1}, Lcom/oneplus/settings/utils/OPUtils$1;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static sendAppTrackerForAssistApp()V
    .locals 4

    const-string v0, "OPUtils"

    .line 736
    :try_start_0
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 739
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAppTrackerForAssistApp componentNamePkg is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const-string v2, "default_app_assist&voice input"

    .line 743
    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 742
    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 746
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "sendAppTrackerForAssistApp componentNamePkg is not exist"

    .line 747
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static sendAppTrackerForAssistantAPP()V
    .locals 4

    .line 580
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 581
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_turn_on_voice_assistant"

    const/4 v2, 0x0

    .line 580
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "on"

    goto :goto_0

    :cond_1
    const-string v0, "off"

    .line 583
    :goto_0
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForAutoBrightness()V
    .locals 3

    .line 588
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 589
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    .line 588
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "adaptive_brightness_click_auto_open"

    .line 591
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForAutoNightMode()V
    .locals 2

    .line 616
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    .line 617
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    const-string v1, "night_mode_auto_open"

    .line 620
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static sendAppTrackerForBrightness()V
    .locals 4

    .line 596
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 597
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 596
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8c

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/16 v1, 0xdc

    if-ge v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/16 v1, 0x1a4

    if-ge v0, v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    :goto_0
    const-string v1, "adaptive_brightness_manual_slider"

    .line 611
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForClockStyle()V
    .locals 4

    .line 539
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_clock_style"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-lez v0, :cond_0

    .line 540
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "1"

    :goto_0
    const-string v1, "AOD"

    const-string v2, "Clock"

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForDataAutoSwitch()V
    .locals 3

    .line 825
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 826
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_auto_change_to_mobile_data"

    const/4 v2, 0x0

    .line 825
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "data_auto_switch"

    .line 828
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForDefaultHomeApp()V
    .locals 2

    .line 754
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 756
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "default_app_home_app"

    .line 759
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 762
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "OPUtils"

    const-string v1, "sendAppTrackerForDefaultJHomeApp componentNamePkg is not exist"

    .line 763
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static sendAppTrackerForDefaultHomeAppByComponentName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "default_app_home_app"

    .line 721
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAppTrackerForDefaultHomeAppByPackageName componentName is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendAppTrackerForEffectStrength()V
    .locals 4

    .line 635
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 636
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/16 v2, 0x67

    const/4 v3, -0x2

    .line 635
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0x2c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x58

    if-ge v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    const-string v1, "night_mode_effect_strength"

    .line 646
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForFodAnimStyle()V
    .locals 4

    .line 514
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 515
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 514
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "fod_style"

    .line 518
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGameMode3drPartyCalls()V
    .locals 4

    .line 783
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 785
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 784
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "game_mode_3rd_party_calls"

    .line 788
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGameModeAdEnable()V
    .locals 4

    .line 792
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 793
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_game_mode_ad_enable"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 792
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "game_mode_ad_enable"

    .line 795
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGameModeApps(Ljava/lang/String;)V
    .locals 1

    const-string v0, "game_mode_apps"

    .line 814
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForGameModeBrightness()V
    .locals 4

    .line 799
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 800
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_close_automatic_brightness"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 799
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "game_mode_disable_auto_brightness"

    .line 803
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGameModeNetWorkBoost()V
    .locals 4

    .line 807
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 808
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_network_acceleration"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 807
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "game_mode_network_boost"

    .line 810
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGameModeNotificationShow()V
    .locals 4

    .line 776
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 777
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 776
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "game_mode_notification_show"

    .line 779
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGameModeRemovedApps()V
    .locals 2

    .line 2126
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 2127
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gamemode_removed_packages_by_user"

    .line 2126
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2129
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForGameModeSpeakerAnswer()V
    .locals 4

    .line 769
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 770
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_answer_no_incallui"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 769
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "game_mode_speaker_answer"

    .line 772
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForGestureAndButton()V
    .locals 6

    .line 544
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 545
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 544
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 549
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_navigation_bar_type"

    const/4 v2, 0x1

    .line 548
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const-string v3, "swap_button"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 552
    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    goto :goto_0

    .line 554
    :cond_1
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 555
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "oem_acc_key_define"

    .line 554
    invoke-static {v1, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 557
    invoke-static {v3, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :goto_0
    if-ne v0, v2, :cond_2

    .line 560
    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 561
    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "op_gesture_button_enabled"

    .line 560
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x4

    :cond_2
    const-string v1, "nav&gestures_settings"

    .line 566
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForHorizonLightAnimStyle()V
    .locals 4

    .line 522
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 523
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_horizon_light_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 522
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "horizon_light_style"

    .line 526
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForNightMode()V
    .locals 2

    .line 625
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    .line 626
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result v0

    const-string v1, "night_mode_manual_open"

    .line 628
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static sendAppTrackerForOhpdForceStopEnabled(Landroid/content/Context;)V
    .locals 3

    .line 920
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ohpd_force_stop_enabled"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "On"

    goto :goto_0

    :cond_0
    const-string p0, "Off"

    :goto_0
    const-string v0, "BatteryForceStop"

    const-string v1, "ForceStop Status"

    .line 921
    invoke-static {v0, v1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForQuickLaunch()V
    .locals 3

    .line 575
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 576
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getAllQuickLaunchStrings(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quick_launch_settings"

    const-string v2, "quick_launch_shortcuts"

    .line 575
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForQuickLaunchToggle()V
    .locals 3

    .line 570
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 571
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "quick_launch_settings"

    const-string v2, "quick_launch"

    .line 570
    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForQuickReply()V
    .locals 2

    .line 2069
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 2071
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2070
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getQuickReplyAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "im_quick_reply"

    .line 2069
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForQuickReplyIMStatus()V
    .locals 6

    const-string v0, "com.tencent.mm"

    const-string v1, "com.whatsapp"

    const-string v2, "com.instagram.android"

    const-string v3, "com.tencent.mobileqq"

    .line 490
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 493
    aget-object v3, v0, v2

    .line 494
    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v4, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isQuickReplyAppSelected(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 495
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 500
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lqr_im_states"

    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static sendAppTrackerForQuickReplyKeyboardStatus()V
    .locals 3

    .line 505
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 506
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickreply_ime_adjust"

    const/4 v2, 0x0

    .line 505
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "lqr_fk_switch"

    .line 508
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForReadingMode()V
    .locals 3

    .line 662
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 663
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status_manual"

    const/4 v2, -0x2

    .line 662
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "force-on"

    .line 666
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "force-off"

    .line 668
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    const-string v0, "read_mode_manual_open"

    .line 671
    invoke-static {v0, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForReadingModeApps(Ljava/lang/String;)V
    .locals 1

    const-string v0, "read_mode_apps"

    .line 650
    invoke-static {v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendAppTrackerForReadingModeNotification()V
    .locals 4

    .line 654
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 655
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 654
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "read_mode_block_peek_noti"

    .line 657
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForScreenColorMode()V
    .locals 4

    .line 676
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 677
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 676
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "screen_calibration_screen_calibration"

    .line 679
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForScreenCustomColorMode()V
    .locals 6

    .line 683
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_screen_better_value"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 686
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x38

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    :goto_0
    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v4, v0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v0, v4

    cmpg-double v0, v2, v0

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    const-string v1, "screen_calibration_custom_color"

    .line 698
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForSmartWifiSwitch()V
    .locals 3

    .line 818
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 819
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_should_switch_network"

    const/4 v2, 0x0

    .line 818
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "wifi_smart_choice"

    .line 821
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForThemes()V
    .locals 3

    .line 702
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 703
    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x0

    .line 702
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "theme_theme"

    .line 705
    invoke-static {v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    return-void
.end method

.method public static sendAppTrackerForTrueColor()V
    .locals 3

    .line 532
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_white_balance_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 533
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true_tone"

    const-string v2, "status"

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sendDisplaySettingsAnalytics()V
    .locals 1

    .line 833
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 834
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->sendResolutionAnalytics(Landroid/content/Context;)V

    .line 835
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->sendRefreshRateAnalytics(Landroid/content/Context;)V

    .line 836
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->sendNightModeAnalytics(Landroid/content/Context;)V

    .line 837
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->sendScreenColorModeAnalytics(Landroid/content/Context;)V

    return-void
.end method

.method private static sendFODAnimAnalytics(Landroid/content/Context;)V
    .locals 3

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_custom_unlock_animation_style"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 977
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string v0, "status"

    const-string v1, "fod_effect"

    if-nez p0, :cond_0

    const-string p0, "1"

    .line 981
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    const-string p0, "2"

    .line 983
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    const-string p0, "3"

    .line 985
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    if-ne p0, v2, :cond_3

    const-string p0, "4"

    .line 987
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    if-ne p0, v2, :cond_4

    const-string p0, "5"

    .line 989
    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static sendGoogleTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2595
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    check-cast v0, Lcom/oneplus/settings/SettingsBaseApplication;

    .line 2597
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 2602
    :try_start_0
    invoke-virtual {v0}, Lcom/oneplus/settings/SettingsBaseApplication;->isBetaRom()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 2605
    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2606
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    move-object p2, v1

    .line 2610
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/settings/SettingsBaseApplication;->getDefaultTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v0

    .line 2611
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/google/analytics/tracking/android/MapBuilder;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lcom/google/analytics/tracking/android/MapBuilder;

    move-result-object p0

    .line 2612
    invoke-virtual {p0}, Lcom/google/analytics/tracking/android/MapBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 2611
    invoke-virtual {v0, p0}, Lcom/google/analytics/tracking/android/Tracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2615
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static sendNaviGestureAnalytics(Landroid/content/Context;)V
    .locals 3

    .line 995
    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "status"

    const-string v2, "nav_gesture"

    if-eqz v0, :cond_0

    const-string p0, "2"

    .line 998
    invoke-static {v2, v1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->is3ButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "1"

    .line 1001
    invoke-static {v2, v1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1002
    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/navigationbargestures/OPNavigationBarGesturesSettings;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "3"

    .line 1003
    invoke-static {v2, v1, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static sendNightModeAnalytics(Landroid/content/Context;)V
    .locals 19

    const-string v0, "OPUtils"

    const/4 v1, 0x3

    .line 883
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sendNightModeAnalytics"

    .line 884
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_0
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 889
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "night_mode"

    const-string v3, "auto_open"

    .line 888
    invoke-static {v2, v3, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v3, Lcom/oneplus/settings/better/OPScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v4, "oem_nightmode_progress_status"

    const/4 v5, -0x2

    invoke-static {v0, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 895
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v3

    const/16 v3, 0x64

    int-to-double v6, v0

    int-to-double v8, v3

    const-wide v10, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v10, v8

    cmpg-double v4, v6, v10

    const-string v12, "3"

    const-string v13, "2"

    const-string v14, "1"

    const-wide v15, 0x3fe51eb851eb851fL    # 0.66

    const-string v5, "screen_color"

    if-gtz v4, :cond_1

    .line 900
    invoke-static {v2, v5, v14}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    mul-double v17, v8, v15

    cmpg-double v4, v6, v17

    if-gtz v4, :cond_2

    .line 902
    invoke-static {v2, v5, v13}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-gt v0, v3, :cond_3

    .line 904
    invoke-static {v2, v5, v12}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v4, "oem_nightmode_brightness_progress"

    const/4 v5, -0x2

    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    float-to-double v4, v0

    cmpg-double v1, v4, v10

    const-string v6, "brightness"

    if-gtz v1, :cond_4

    .line 910
    invoke-static {v2, v6, v14}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    mul-double/2addr v8, v15

    cmpg-double v1, v4, v8

    if-gtz v1, :cond_5

    .line 912
    invoke-static {v2, v6, v13}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    int-to-float v1, v3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_6

    .line 914
    invoke-static {v2, v6, v12}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private static sendRefreshRateAnalytics(Landroid/content/Context;)V
    .locals 3

    .line 863
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenRefreshRate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const-string v1, "OPUtils"

    .line 867
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sendRefreshRateAnalytics"

    .line 868
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_refresh_rate"

    const/4 v1, 0x2

    .line 871
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "status"

    const-string v2, "refresh rate"

    if-ne p0, v1, :cond_2

    const-string p0, "0"

    .line 875
    invoke-static {v2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    const-string p0, "1"

    .line 877
    invoke-static {v2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static sendResolutionAnalytics(Landroid/content/Context;)V
    .locals 3

    .line 841
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "OPUtils"

    .line 845
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sendResolutionAnalytics"

    .line 846
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_resolution_adjust"

    const/4 v1, 0x2

    .line 848
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const-string v0, "status"

    const-string v2, "resolution"

    if-ne p0, v1, :cond_2

    const-string p0, "1"

    .line 852
    invoke-static {v2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    const-string p0, "2"

    .line 854
    invoke-static {v2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    const-string p0, "3"

    .line 856
    invoke-static {v2, v0, p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static sendScreenColorModeAnalytics(Landroid/content/Context;)V
    .locals 13

    const-string v0, "OPUtils"

    const/4 v1, 0x3

    .line 928
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sendScreenColorModeAnalytics"

    .line 929
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_color_mode_settings_value"

    const/4 v3, 0x1

    const/4 v4, -0x2

    .line 932
    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v2, "3"

    const-string v5, "2"

    const-string v6, "1"

    const-string v7, "status"

    const-string v8, "screen_calibration"

    if-ne v0, v3, :cond_1

    .line 936
    invoke-static {v8, v7, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v9, 0xa

    if-ne v0, v9, :cond_2

    .line 938
    invoke-static {v8, v7, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    .line 940
    invoke-static {v8, v7, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    if-ne v0, v1, :cond_6

    .line 945
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v7, "screen_color_mode_advanced_settings_value"

    .line 944
    invoke-static {v0, v7, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "advanced"

    if-nez v0, :cond_4

    .line 949
    invoke-static {v8, v1, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    .line 951
    invoke-static {v8, v1, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 953
    invoke-static {v8, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/oneplus/settings/better/OPScreenColorMode;->DEFAULT_COLOR_PROGRESS:I

    const-string v1, "oem_screen_better_value"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x64

    .line 962
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x38

    :cond_7
    int-to-double v3, p0

    int-to-double v9, v0

    const-wide v11, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v11, v9

    cmpg-double v1, v3, v11

    const-string v7, "custom"

    if-gtz v1, :cond_8

    .line 966
    invoke-static {v8, v7, v6}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-wide v11, 0x3fe51eb851eb851fL    # 0.66

    mul-double/2addr v9, v11

    cmpg-double v1, v3, v9

    if-gtz v1, :cond_9

    .line 968
    invoke-static {v8, v7, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-gt p0, v0, :cond_a

    .line 970
    invoke-static {v8, v7, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public static setAppUpdated(Z)V
    .locals 1

    .line 361
    sput-boolean p0, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    .line 362
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAppUpdated:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/settings/utils/OPUtils;->mAppUpdated:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setLightNavigationBar(Landroid/view/Window;I)V
    .locals 2

    .line 3286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLightNavigationBar theme =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_3

    .line 3288
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-nez p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    or-int/lit8 p1, v0, 0x10

    goto :goto_0

    :cond_1
    and-int/lit8 p1, v0, -0x11

    :goto_0
    and-int/lit16 p1, p1, -0x2001

    .line 3302
    :goto_1
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isGesturalEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 3303
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 3304
    invoke-virtual {p0, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 3306
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method

.method public static showROMStorage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1619
    const-class v0, Landroid/os/storage/StorageManager;

    .line 1620
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1621
    new-instance v1, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {v1, v0}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    .line 1624
    invoke-static {v1}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v0

    .line 1625
    iget-wide v0, v0, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    .line 1626
    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".00"

    .line 1627
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 1937
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static startFragment(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 3572
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 3573
    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startVibratePattern(Landroid/content/Context;)V
    .locals 2

    .line 4003
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    .line 4004
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4006
    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4007
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/16 v1, 0x3eb

    .line 4008
    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object p0

    .line 4010
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_1
    return-void
.end method

.method public static stopTethering(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    .line 2865
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    .line 2866
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method public static supportGestureAudioRoute()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
