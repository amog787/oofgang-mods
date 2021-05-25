.class public Lcom/android/server/OpVibratorService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOpVibratorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OpVibratorService$you;,
        Lcom/android/server/OpVibratorService$sis;
    }
.end annotation


# static fields
.field private static final ATTR_DEFAULT:Ljava/lang/String; = "default"

.field private static final ATTR_DURATION:Ljava/lang/String; = "duration"

.field private static final ATTR_EFFECT:Ljava/lang/String; = "effectId"

.field private static final ATTR_MAX:Ljava/lang/String; = "max"

.field private static final ATTR_MIN:Ljava/lang/String; = "min"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packagename"

.field private static final ATTR_SCENE:Ljava/lang/String; = "sceneId"

.field private static final DEBUG:Z

.field private static final DEBUG_DUMP:Z

.field private static final DEBUG_ONEPLUS:Z

.field private static final DURATION_MAP:Ljava/lang/String; = "durationmap"

.field private static final EFFECT_MAP:Ljava/lang/String; = "effectmap"

.field private static final ENHANCE_DEFAULT:Ljava/lang/String; = "enhancedefault"

.field private static final HAPTIC_CONFIG_LIST:Ljava/lang/String; = "haptic_config_list"

.field private static final INPUTMETHOD_DURATION_MAP_PATH:Ljava/lang/String; = "/system_ext/etc/inputmethod_duration_map.xml"

.field private static final INTENSITY_MIDDLE:I = -0x2

.field private static final INTENSITY_STRONG:I = -0x3

.field private static final INTENSITY_WEAK:I = -0x1

.field private static final MOTOR_BIN_UPDATE_PATH:Ljava/lang/String; = "/sys/class/leds/vibrator/ram_update"

.field private static final MOTOR_CALI_READ_PATH:Ljava/lang/String; = "/persist/engineermode/vibrator_data"

.field private static final MOTOR_CALI_WRITE_PATH:Ljava/lang/String; = "/sys/class/leds/vibrator/haptic_osc_data"

.field private static final MOTOR_DO_F0_CALI:Ljava/lang/String; = "/sys/class/leds/vibrator/f0_cali_data"

.field private static final MOTOR_F0_CALI_DATA_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/f0_cali_data"

.field private static final MOTOR_F0_DATE_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/f0_date"

.field private static final MOTOR_F0_PATH:Ljava/lang/String; = "/sys/class/leds/vibrator/rf_hz"

.field private static final MOTOR_F0_R_PATH:Ljava/lang/String; = "/sys/class/leds/vibrator/cali"

.field private static final NOTIFICATION_REASON:Ljava/lang/String; = "Notification (delayed)"

.field private static final ONLINE_CONFIG_PROJECT_NAME:Ljava/lang/String; = "ShortVibration"

.field private static final SHORT_VIBRATION_EFFECT:Ljava/lang/String; = "short_vibration_effect"

.field private static final SHORT_VIBRATION_EFFECT_CONFIG_PATH:Ljava/lang/String; = "/system/etc/oneplus_short_vibration.xml"

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATION_DURATION:Ljava/lang/String; = "duration"

.field private static final VIBRATION_EFFECT:Ljava/lang/String; = "effect"

.field private static final VIBRATION_MAX_DURATION:Ljava/lang/String; = "max_duration"

.field private static final VIBRATION_MIN_DURATION:Ljava/lang/String; = "min_duration"

.field private static final VIBRATION_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final VIBRATION_PACKAGE_NAME_LIST:Ljava/lang/String; = "package_name_list"

.field private static final VIBRATION_UNSPECIFIED_PACKAGE:Ljava/lang/String; = "unspecified_package"

.field private static final VIBRATOR_EFFECT_MAP_PATH:Ljava/lang/String; = "/system_ext/etc/vibrator_effect_map.xml"

.field private static durationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static effectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static enhanceDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static maxDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static minDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sShortVibrationOnlineConfigEnabled:Z


# instance fields
.field private imPkg:Ljava/lang/String;

.field private intensityEffectType:I

.field private final intensityMiddle:I

.field private intensityStrengthType:I

.field private final intensityStrong:I

.field private final intensityWeak:I

.field private isEffectChanged:Z

.field private isVibrating:Z

.field private mConfigUpdater:Lcom/android/server/OpVibratorService$you;

.field private mContext:Landroid/content/Context;

.field private mEffect:I

.field private mEffectConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/OpVibratorService$sis;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mMaxDuration:I

.field private mMinDuration:I

.field private mNoticeVibrateIntensity:I

.field private mPackageNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateOnTouchIntensity:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorIntensityPath:Ljava/lang/String;

.field private oldIntensityEffectType:I

.field private repeatVibrate:Z

.field private sLinearMotorVibrateService:Lsis/zta/you/zta/zta/zta;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/OpVibratorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v0, "persist.debug.vibrator.debugall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpVibratorService;->DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v2, Lcom/android/server/OpVibratorService;->DEBUG:Z

    or-int/2addr v0, v2

    sput-boolean v0, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    const-string v0, "persist.debug.vibrator.dump"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpVibratorService;->DEBUG_DUMP:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OpVibratorService;->effectMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OpVibratorService;->durationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OpVibratorService;->minDurationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OpVibratorService;->maxDurationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OpVibratorService;->enhanceDefaultMap:Ljava/util/Map;

    sput-boolean v1, Lcom/android/server/OpVibratorService;->sShortVibrationOnlineConfigEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x244

    iput v0, p0, Lcom/android/server/OpVibratorService;->intensityWeak:I

    const/16 v0, 0x5e4

    iput v0, p0, Lcom/android/server/OpVibratorService;->intensityMiddle:I

    const/16 v0, 0x776

    iput v0, p0, Lcom/android/server/OpVibratorService;->intensityStrong:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OpVibratorService;->oldIntensityEffectType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    iput v2, p0, Lcom/android/server/OpVibratorService;->mNoticeVibrateIntensity:I

    iput-boolean v1, p0, Lcom/android/server/OpVibratorService;->repeatVibrate:Z

    iput v1, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    iput-boolean v1, p0, Lcom/android/server/OpVibratorService;->isEffectChanged:Z

    iput-boolean v1, p0, Lcom/android/server/OpVibratorService;->isVibrating:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/OpVibratorService;->imPkg:Ljava/lang/String;

    const-string v1, "/sys/class/leds/vibrator/vmax_mv"

    iput-object v1, p0, Lcom/android/server/OpVibratorService;->mVibratorIntensityPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/OpVibratorService;->sLinearMotorVibrateService:Lsis/zta/you/zta/zta/zta;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/OpVibratorService;->mEffectConfigs:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/OpVibratorService;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/OpVibratorService;->mPackageNameList:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/server/OpVibratorService;->mMinDuration:I

    iput v0, p0, Lcom/android/server/OpVibratorService;->mMaxDuration:I

    iput v0, p0, Lcom/android/server/OpVibratorService;->mEffect:I

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OpVibratorService;->sShortVibrationOnlineConfigEnabled:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/OpVibratorService;->sShortVibrationOnlineConfigEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/OpVibratorService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpVibratorService;->mEffectConfigs:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/OpVibratorService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpVibratorService;->mPackageNameList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/OpVibratorService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->mMinDuration:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/OpVibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/OpVibratorService;->mMinDuration:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/OpVibratorService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->mMaxDuration:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/OpVibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/OpVibratorService;->mMaxDuration:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/OpVibratorService;)I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->mEffect:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/server/OpVibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/OpVibratorService;->mEffect:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/OpVibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OpVibratorService;->clearConfig()V

    return-void
.end method

.method private clearConfig()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OpVibratorService;->mPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OpVibratorService;->mMinDuration:I

    iput v0, p0, Lcom/android/server/OpVibratorService;->mMaxDuration:I

    iput v0, p0, Lcom/android/server/OpVibratorService;->mEffect:I

    return-void
.end method

.method private getLinearMotorVibrateService()Lsis/zta/you/zta/zta/zta;
    .locals 3

    iget-object v0, p0, Lcom/android/server/OpVibratorService;->sLinearMotorVibrateService:Lsis/zta/you/zta/zta/zta;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lsis/zta/you/zta/zta/zta;->ywr()Lsis/zta/you/zta/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OpVibratorService;->sLinearMotorVibrateService:Lsis/zta/you/zta/zta/zta;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get linear motor vibrator interface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/OpVibratorService;->sLinearMotorVibrateService:Lsis/zta/you/zta/zta/zta;

    return-object p0
.end method

.method private getVibrationRules(Ljava/lang/String;)V
    .locals 8

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "getVibrationRules"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/OpVibratorService;->sShortVibrationOnlineConfigEnabled:Z

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/OpVibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OpVibratorService;->mPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_2
    const-string v2, "duration"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "min_duration"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OpVibratorService;->mMinDuration:I

    const-string v1, "max_duration"

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OpVibratorService;->mMaxDuration:I

    goto :goto_2

    :cond_3
    const-string v2, "effect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/OpVibratorService;->mEffect:I

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/OpVibratorService;->mPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/OpVibratorService;->mEffectConfigs:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/OpVibratorService;->mPackageNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Lcom/android/server/OpVibratorService$sis;

    iget v5, p0, Lcom/android/server/OpVibratorService;->mMinDuration:I

    iget v6, p0, Lcom/android/server/OpVibratorService;->mMaxDuration:I

    iget v7, p0, Lcom/android/server/OpVibratorService;->mEffect:I

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/OpVibratorService$sis;-><init>(Lcom/android/server/OpVibratorService;III)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/OpVibratorService;->clearConfig()V

    :cond_5
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_7
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void

    :goto_4
    :try_start_9
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_7
    :goto_6
    return-void
.end method

.method private grabOnlineConfig()V
    .locals 3

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    const-string v2, "ShortVibration"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/OpVibratorService;->mConfigUpdater:Lcom/android/server/OpVibratorService$you;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/OpVibratorService$you;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    move v2, p1

    :cond_0
    return v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private static readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "readStringFromFile io close exception :"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readStringFromFile file not exists : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception v2

    move-object v3, v1

    :goto_3
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readStringFromFile io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_3
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readStringFromFile path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v1, v3

    :goto_5
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_6
    throw p1

    :cond_5
    :goto_7
    const-string p1, "readStringFromFile invalid file path"

    goto/16 :goto_1
.end method

.method private registerOnlineConfig()V
    .locals 4

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/OpVibratorService;->mConfigUpdater:Lcom/android/server/OpVibratorService$you;

    const/4 v2, 0x0

    const-string v3, "ShortVibration"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private writeNodeValue(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x61

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OpVibratorService;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeNodeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/OpVibratorService;->mVibratorIntensityPath:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/io/FileWriter;

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string v0, "to"

    const-string v1, "writeStringToFile Write"

    const-string v2, "close wrong"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    goto :goto_3

    :catch_2
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeStringToFile sorry write wrong:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v3, 0x0

    :goto_2
    return v3

    :catchall_1
    move-exception v3

    :goto_3
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    throw v3
.end method


# virtual methods
.method public doVibratorOn(JI)V
    .locals 4

    const-wide/32 v0, 0x186a0

    mul-long/2addr v0, p1

    iget p3, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    mul-int/lit8 p3, p3, 0xa

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget p3, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    int-to-long v2, p3

    add-long/2addr v0, v2

    sget-boolean p3, Lcom/android/server/OpVibratorService;->DEBUG:Z

    if-eqz p3, :cond_0

    sget-object p3, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVibratorOn: millis = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVibratorOn: intensityEffectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p3, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVibratorOn: intensityStrengthType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p3, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz p3, :cond_1

    sget-object p3, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doVibratorOn: vibratingPattern = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p3, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    iget v0, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/OpVibratorService;->turnOnLinearmotorVibrator(IJI)V

    return-void
.end method

.method public doVibratorPerformEffect(IILcom/android/server/VibratorService$Vibration;)J
    .locals 7

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guacamoleb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "guacamoleb mVibrateOnTouchIntensity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v1, p1

    iget p0, p0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    int-to-long v3, p0

    const/4 v6, 0x0

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide p0

    return-wide p0

    :cond_0
    int-to-long v0, p1

    int-to-long v2, p2

    const/4 v5, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJLcom/android/server/VibratorService$Vibration;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public doVibratorSetAmplitude(I)V
    .locals 3

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP config vibrate strength! (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intensityStrengthType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guacamoleb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/16 p0, 0x2b

    :goto_0
    invoke-static {p0}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    const/16 p0, 0x93

    goto :goto_0

    :cond_1
    const/16 p0, 0x71

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    :goto_1
    return-void
.end method

.method public getDurationMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/server/OpVibratorService;->durationMap:Ljava/util/Map;

    return-object p0
.end method

.method public getEffectMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/server/OpVibratorService;->effectMap:Ljava/util/Map;

    return-object p0
.end method

.method public getImPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/OpVibratorService;->imPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getIntensityEffectType()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    return p0
.end method

.method public getIntensityStrengthType()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    return p0
.end method

.method public getOldIntensityEffectType()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->oldIntensityEffectType:I

    return p0
.end method

.method public getRepeatVibrate()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/OpVibratorService;->repeatVibrate:Z

    return p0
.end method

.method public getVibrateOnTouchIntensity()I
    .locals 0

    iget p0, p0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    return p0
.end method

.method public getVibratorEffectMap(Ljava/lang/String;)V
    .locals 8

    const-string p0, "sceneId"

    const-string v0, "Got execption parsing permissions."

    const-string v1, "Got execption close permReader."

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileReader;

    invoke-direct {p1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "effectmap"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    sget-object v3, Lcom/android/server/OpVibratorService;->effectMap:Ljava/util/Map;

    invoke-interface {v2, v5, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v6, "effectId"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "duration"

    invoke-interface {v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/server/OpVibratorService;->durationMap:Ljava/util/Map;

    invoke-interface {v2, v5, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v4, "durationmap"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "packagename"

    if-eqz v4, :cond_3

    :try_start_2
    sget-object v3, Lcom/android/server/OpVibratorService;->minDurationMap:Ljava/util/Map;

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "min"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/OpVibratorService;->maxDurationMap:Ljava/util/Map;

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "max"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_1
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v4, "enhancedefault"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/OpVibratorService;->enhanceDefaultMap:Ljava/util/Map;

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "default"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :try_start_4
    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_2
    move-exception p0

    :try_start_6
    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :goto_3
    return-void

    :goto_4
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_5
    throw p0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method public initCaliFile()V
    .locals 2

    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v0, "/persist/engineermode/vibrator_data"

    invoke-static {p0, v0}, Lcom/android/server/OpVibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/leds/vibrator/haptic_osc_data"

    invoke-static {v0, v1, p0}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/server/OpVibratorService;->mVibrator:Landroid/os/Vibrator;

    const-string p1, "dumpling"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "cheeseburger"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const-string p1, "/sys/class/timed_output/vibrator/vmax_mv"

    iput-object p1, p0, Lcom/android/server/OpVibratorService;->mVibratorIntensityPath:Ljava/lang/String;

    :cond_1
    const-string p1, "/system_ext/etc/vibrator_effect_map.xml"

    invoke-virtual {p0, p1}, Lcom/android/server/OpVibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    const-string p1, "/system_ext/etc/inputmethod_duration_map.xml"

    invoke-virtual {p0, p1}, Lcom/android/server/OpVibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0x61

    aput v0, p1, p2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/server/OpVibratorService$you;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/OpVibratorService$you;-><init>(Lcom/android/server/OpVibratorService;Lcom/android/server/OpVibratorService$zta;)V

    iput-object p1, p0, Lcom/android/server/OpVibratorService;->mConfigUpdater:Lcom/android/server/OpVibratorService$you;

    invoke-direct {p0}, Lcom/android/server/OpVibratorService;->registerOnlineConfig()V

    invoke-direct {p0}, Lcom/android/server/OpVibratorService;->grabOnlineConfig()V

    const-string p1, "/system/etc/oneplus_short_vibration.xml"

    invoke-direct {p0, p1}, Lcom/android/server/OpVibratorService;->getVibrationRules(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public isVibrating()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/OpVibratorService;->isVibrating:Z

    return p0
.end method

.method public motorF0Calibration()V
    .locals 12

    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v0, "/mnt/vendor/persist/engineermode/f0_date"

    invoke-static {p0, v0}, Lcom/android/server/OpVibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sget-object v3, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "motorF0Calibration, month = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, " "

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    move v6, v5

    :goto_0
    array-length v7, p0

    if-ge v6, v7, :cond_1

    sget-object v7, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "motorF0Calibration buff"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-object v9, p0, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    aget-object v6, p0, v5

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt v1, p0, :cond_2

    sub-int p0, v1, p0

    goto :goto_1

    :cond_2
    rsub-int/lit8 p0, p0, 0xc

    add-int/2addr p0, v1

    sub-int/2addr p0, v2

    :goto_1
    move v7, v5

    goto :goto_3

    :cond_3
    :goto_2
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v6, "motorF0Calibration tmp null, return"

    invoke-static {p0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v2

    move-object v6, v4

    move p0, v5

    :goto_3
    sget-object v8, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v9, "msmnile"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "1"

    const-string v10, "/sys/class/leds/vibrator/rf_hz"

    if-eqz v8, :cond_6

    if-gt p0, v2, :cond_5

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {p0, v10, v6}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    :cond_5
    :goto_4
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/OpVibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v0, v10, p0}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_6
    sget-object v8, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v11, "/mnt/vendor/persist/engineermode/f0_cali_data"

    invoke-static {v8, v11}, Lcom/android/server/OpVibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    sget-object v4, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v5, "MOTOR_F0_CALI_DATA_PATH tmp null"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    :cond_8
    const-string v4, "/sys/class/leds/vibrator/f0_cali_data"

    if-gt p0, v2, :cond_a

    if-nez v7, :cond_a

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {p0, v10, v6}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_a
    :goto_5
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v2, "/sys/class/leds/vibrator/cali"

    invoke-static {p0, v2, v9}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/server/OpVibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/server/OpVibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v2, v11, v8}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {v0, v10, p0}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_6
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    invoke-static {p0, v4, v8}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_7
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v0, "/sys/class/leds/vibrator/ram_update"

    invoke-static {p0, v0, v9}, Lcom/android/server/OpVibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setIntensityEffectType(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    sget-boolean p0, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIntensityEffectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p0, Lcom/android/server/OpVibratorService;->DEBUG_DUMP:Z

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    const-string v0, "setIntensityEffectType calling stack: "

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public setIsEffectChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OpVibratorService;->isEffectChanged:Z

    return-void
.end method

.method public setIsVibrating(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OpVibratorService;->isVibrating:Z

    return-void
.end method

.method public setOldIntensityEffectType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/OpVibratorService;->oldIntensityEffectType:I

    return-void
.end method

.method public setRepeatVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OpVibratorService;->repeatVibrate:Z

    return-void
.end method

.method public setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v1, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVibratorEffect from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") : sceneType = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/OpVibratorService;->DEBUG_DUMP:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "setVibratorEffect calling stack: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    rem-int/lit16 v1, p2, 0x2710

    div-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "setVibratorEffect without sync sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 p2, p2, -0x7d0

    move v0, v3

    :cond_2
    sget-object v1, Lcom/android/server/OpVibratorService;->effectMap:Ljava/util/Map;

    const/4 v2, -0x1

    if-eqz v1, :cond_b

    sget-object v4, Lcom/android/server/OpVibratorService;->durationMap:Ljava/util/Map;

    if-nez v4, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v4, Lcom/android/server/OpVibratorService;->durationMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v1, :cond_a

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {p1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide p1

    const-wide v5, 0x7fffffffffffffffL

    cmp-long p1, p1, v5

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    iput p1, p0, Lcom/android/server/OpVibratorService;->oldIntensityEffectType:I

    goto :goto_0

    :cond_5
    iput v2, p0, Lcom/android/server/OpVibratorService;->oldIntensityEffectType:I

    :goto_0
    sget-boolean p1, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVibratorEffect : effectType = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-boolean p1, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVibratorEffect : duration = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-enter p3

    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/OpVibratorService;->isVibrating:Z

    if-nez p1, :cond_8

    iget p1, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p1, p2, :cond_8

    iput-boolean v3, p0, Lcom/android/server/OpVibratorService;->isEffectChanged:Z

    :cond_8
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    if-eqz v0, :cond_9

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    :cond_9
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_1
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "the effectMap or durationMap do not contains the sceneType : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    :goto_3
    sget-object p0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string p1, "effectMap is null"

    goto :goto_2
.end method

.method public turnOffLinearMotorVibrator()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OpVibratorService;->getLinearMotorVibrateService()Lsis/zta/you/zta/zta/zta;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "linearmotorVibratorOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lsis/zta/you/zta/zta/zta;->H()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "turnOffLinearMotorVibrator failed."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public turnOnLinearmotorVibrator(IJI)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/OpVibratorService;->getLinearMotorVibrateService()Lsis/zta/you/zta/zta/zta;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v1, "linearmotorVibratorOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int p2, p2

    int-to-short p1, p1

    int-to-short p3, p4

    invoke-interface {p0, p2, p1, p3}, Lsis/zta/you/zta/zta/zta;->P(ISS)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string p2, "turnOnLinearmotorVibrator failed."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public updateVibrator()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/OpVibratorService;->imPkg:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibrate_on_touch_intensity"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    iget-object v0, p0, Lcom/android/server/OpVibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notice_vibrate_intensity"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/OpVibratorService;->mNoticeVibrateIntensity:I

    return-void
.end method

.method public vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    sget-boolean v4, Lcom/android/server/OpVibratorService;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibrate from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", reason = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v4, v1, Landroid/os/VibrationEffect$Waveform;

    const/4 v5, 0x3

    const/16 v6, 0x776

    const/16 v7, 0x5e4

    const/16 v8, 0x61

    const/16 v9, 0x244

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_6

    check-cast v1, Landroid/os/VibrationEffect$Waveform;

    iget-object v4, v1, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget v1, v1, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    aget-wide v13, v4, v12

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-nez v13, :cond_1

    invoke-direct {v0, v9}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    iput v11, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    aget-wide v6, v4, v12

    :goto_0
    invoke-static {v4, v6, v7}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v4

    goto :goto_1

    :cond_1
    aget-wide v13, v4, v12

    const-wide/16 v15, -0x2

    cmp-long v9, v13, v15

    if-nez v9, :cond_2

    invoke-direct {v0, v7}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    iput v10, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    aget-wide v6, v4, v12

    goto :goto_0

    :cond_2
    aget-wide v13, v4, v12

    const-wide/16 v15, -0x3

    cmp-long v7, v13, v15

    if-nez v7, :cond_3

    invoke-direct {v0, v6}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    iput v5, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    aget-wide v6, v4, v12

    goto :goto_0

    :cond_3
    iget-boolean v6, v0, Lcom/android/server/OpVibratorService;->isEffectChanged:Z

    if-nez v6, :cond_5

    iget-boolean v6, v0, Lcom/android/server/OpVibratorService;->isVibrating:Z

    if-nez v6, :cond_5

    sget-boolean v6, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    const-string v7, "Reset intensityEffectType to 0"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput v12, v0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    :cond_5
    const/16 v6, 0x4fc

    invoke-direct {v0, v6}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    iget v6, v0, Lcom/android/server/OpVibratorService;->mNoticeVibrateIntensity:I

    add-int/2addr v6, v11

    iput v6, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    :goto_1
    :try_start_0
    invoke-static {v4, v1}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    sget-object v0, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating vibration waveform with pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_6
    instance-of v4, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v4, :cond_7

    iget v4, v0, Lcom/android/server/OpVibratorService;->mNoticeVibrateIntensity:I

    add-int/2addr v4, v11

    iput v4, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    goto :goto_2

    :cond_7
    instance-of v4, v1, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v4, :cond_c

    new-array v4, v11, [I

    aput v8, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-nez v4, :cond_c

    sget-boolean v4, Lcom/android/server/OpVibratorService;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mVibrateOnTouchIntensity = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v4, v0, Lcom/android/server/OpVibratorService;->mVibrateOnTouchIntensity:I

    if-eqz v4, :cond_b

    if-eq v4, v11, :cond_a

    if-eq v4, v10, :cond_9

    goto :goto_2

    :cond_9
    invoke-direct {v0, v6}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    goto :goto_2

    :cond_a
    invoke-direct {v0, v7}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    goto :goto_2

    :cond_b
    invoke-direct {v0, v9}, Lcom/android/server/OpVibratorService;->writeNodeValue(I)V

    :cond_c
    :goto_2
    sget-object v4, Lcom/android/server/OpVibratorService;->minDurationMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    sget-object v6, Lcom/android/server/OpVibratorService;->maxDurationMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const-wide/16 v13, 0x0

    if-eqz v4, :cond_d

    if-nez v6, :cond_e

    :cond_d
    iget-object v7, v0, Lcom/android/server/OpVibratorService;->imPkg:Ljava/lang/String;

    if-eqz v7, :cond_17

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_e
    const-string v7, "Notification (delayed)"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v4, :cond_f

    if-nez v6, :cond_10

    :cond_f
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :cond_10
    instance-of v3, v1, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_12

    move-object v3, v1

    check-cast v3, Landroid/os/VibrationEffect$Waveform;

    iget-object v3, v3, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v7, v3

    if-lt v7, v10, :cond_11

    aget-wide v15, v3, v11

    goto :goto_3

    :cond_11
    move-wide v15, v13

    goto :goto_3

    :cond_12
    instance-of v3, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_13

    move-object v3, v1

    check-cast v3, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v15

    :goto_3
    move-wide v8, v15

    goto :goto_4

    :cond_13
    instance-of v3, v1, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v3, :cond_14

    const-wide/16 v15, 0x14

    goto :goto_3

    :cond_14
    move-wide v8, v13

    :goto_4
    cmp-long v7, v8, v13

    if-eqz v7, :cond_17

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v13, v7

    cmp-long v7, v8, v13

    const-wide/16 v13, 0xa

    const-wide/16 v17, 0x1

    if-gtz v7, :cond_15

    move-wide/from16 v13, v17

    goto :goto_5

    :cond_15
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-ltz v7, :cond_16

    goto :goto_5

    :cond_16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    sub-long v10, v8, v10

    mul-long/2addr v10, v13

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    sub-int/2addr v7, v13

    int-to-long v13, v7

    div-long/2addr v10, v13

    add-long v13, v10, v17

    :goto_5
    sget-object v7, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentDuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "maxDuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minDuration: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intensity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v7, v13

    const/4 v10, 0x1

    sub-int/2addr v7, v10

    iput v7, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    const/16 v7, 0x3e7

    iput v7, v0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    sget-object v7, Lcom/android/server/OpVibratorService;->enhanceDefaultMap:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-nez v7, :cond_17

    iput v5, v0, Lcom/android/server/OpVibratorService;->intensityStrengthType:I

    :cond_17
    const/4 v5, 0x1

    new-array v7, v5, [I

    const/16 v3, 0x61

    aput v3, v7, v12

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-direct {v0, v2}, Lcom/android/server/OpVibratorService;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    const/16 v3, 0x2710

    move/from16 v5, p1

    if-lt v5, v3, :cond_20

    if-eqz v4, :cond_18

    if-nez v6, :cond_20

    :cond_18
    iget-object v3, v0, Lcom/android/server/OpVibratorService;->imPkg:Ljava/lang/String;

    if-eqz v3, :cond_19

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    :cond_19
    instance-of v3, v1, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_1b

    move-object v3, v1

    check-cast v3, Landroid/os/VibrationEffect$Waveform;

    iget-object v3, v3, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1a

    const/4 v4, 0x1

    aget-wide v13, v3, v4

    goto :goto_6

    :cond_1a
    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_1b
    instance-of v3, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_1c

    move-object v3, v1

    check-cast v3, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v13

    goto :goto_6

    :cond_1c
    invoke-virtual {v1}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v13

    :goto_6
    iget-object v3, v0, Lcom/android/server/OpVibratorService;->mEffectConfigs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/OpVibratorService;->mEffectConfigs:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/OpVibratorService$sis;

    invoke-virtual {v5}, Lcom/android/server/OpVibratorService$sis;->sis()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/server/OpVibratorService$sis;->you()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/server/OpVibratorService$sis;->zta()I

    move-result v5

    sget-boolean v8, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_1e

    sget-object v8, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "short vibration parameters, key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", minDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", maxDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", effect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", currentDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v8, "unspecified_package"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    int-to-long v8, v6

    cmp-long v8, v13, v8

    if-ltz v8, :cond_1f

    int-to-long v8, v7

    cmp-long v8, v13, v8

    if-gtz v8, :cond_1f

    iput v5, v0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    :cond_1f
    if-eqz v2, :cond_1d

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    int-to-long v8, v6

    cmp-long v4, v13, v8

    if-ltz v4, :cond_1d

    int-to-long v6, v7

    cmp-long v4, v13, v6

    if-gtz v4, :cond_1d

    iput v5, v0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    :cond_20
    sget-boolean v2, Lcom/android/server/OpVibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_21

    sget-object v2, Lcom/android/server/OpVibratorService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " after configuration, intensityEffectType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/OpVibratorService;->intensityEffectType:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-object v1
.end method
