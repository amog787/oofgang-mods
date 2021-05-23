.class public Lcom/android/server/am/vju;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpBatteryStatsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/vju$you;,
        Lcom/android/server/am/vju$sis;
    }
.end annotation


# static fields
.field public static final bvj:Z

.field static final gwm:Ljava/lang/String; = "battery_reset"

.field private static final ibl:Z

.field private static final oif:Ljava/lang/String; = "OpBatteryStatsService"

.field static final qbh:Ljava/lang/String; = "OpBatteryStatsService"

.field private static final ugm:Ljava/lang/String; = "/d/wakeup_sources"


# instance fields
.field private bio:J

.field private cno:Z

.field private dma:Ljava/util/regex/Pattern;

.field private gck:Ljava/util/regex/Pattern;

.field private igw:Z

.field private kth:Lcom/android/server/am/vju$sis;

.field private rtg:Lcom/oneplus/config/ConfigObserver;

.field private sis:Ljava/lang/String;

.field private ssp:Lcom/android/server/am/vju$you;

.field private tsu:Lcom/oneplus/os/IOnePlusExService;

.field wtn:J

.field private you:Landroid/os/DropBoxManager;

.field private ywr:Ljava/util/regex/Pattern;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.build.beta"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const-string v0, "ro.build.alpha"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/server/am/vju;->bvj:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/vju;->ibl:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/vju;->cno:Z

    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/am/vju;->bio:J

    iput-boolean v0, p0, Lcom/android/server/am/vju;->igw:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/vju;->wtn:J

    const-string v1, "(\\d*,hsp,\\d*,\\d*,\".*/.*/)(.*)\""

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/vju;->gck:Ljava/util/regex/Pattern;

    const-string v1, "(.*,wl,.*/.*/.*/)(.*)(,\\d*,f,.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/vju;->dma:Ljava/util/regex/Pattern;

    const-string v1, "(\\d*,\\d*,.*,(?:sy|jb|jbc),\".*/.*/)(.*)(\",.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/vju;->ywr:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/android/server/am/vju;->zta:Landroid/content/Context;

    new-instance p1, Lcom/android/server/am/vju$sis;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/vju$sis;-><init>(Lcom/android/server/am/vju;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/vju;->kth:Lcom/android/server/am/vju$sis;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/vju;->kth:Lcom/android/server/am/vju$sis;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/vju;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/vju;->igw:Z

    return p0
.end method

.method static synthetic cno(Lcom/android/server/am/vju;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/vju;->cno:Z

    return p0
.end method

.method private dma(Ljava/lang/StringBuilder;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "IOException : "

    const-string v3, "OpBatteryStatsService"

    const-string v0, "processPIIScrubing start"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v8, "ro.build.display.id"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ro.build.fingerprint"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ro.build.version.sdk"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ro.product.model"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "persist.sys.timezone"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "========================================================\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "== dumpstate: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Build: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build fingerprint: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DeviceID: null\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ro.build.version.sdk]: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ro.product.model]: ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[persist.sys.timezone]: ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/BatteryOutlierInjector;->getPidMap(Ljava/lang/StringBuilder;)V

    iget-boolean v8, v1, Lcom/android/server/am/vju;->igw:Z

    if-eqz v8, :cond_2

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "DUMP OF SERVICE batterystats:\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "DUMP OF SERVICE sensorservice:\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "------ KERNEL WAKE SOURCES (/d/wakeup_sources) ------\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    new-instance v10, Ljava/io/File;

    const-string v11, "/d/wakeup_sources"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v8, v7

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v7, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_3
    if-eqz v8, :cond_1

    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_4
    throw v1

    :cond_2
    :goto_5
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "== Checkins\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    :goto_6
    array-length v9, v0

    if-ge v2, v9, :cond_6

    aget-object v9, v0, v2

    iget-object v10, v1, Lcom/android/server/am/vju;->gck:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    const-string v12, "]: "

    const-string v13, "After replaced, lines["

    const/4 v14, 0x5

    const/4 v15, 0x1

    if-eqz v11, :cond_3

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v15, v14}, Landroid/os/OpBatteryStatsInjector;->getScrubPIIStr(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-boolean v11, Lcom/android/server/am/vju;->ibl:Z

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    const/4 v14, 0x2

    if-nez v11, :cond_4

    iget-object v10, v1, Lcom/android/server/am/vju;->dma:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v10, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x5

    invoke-static {v9, v15, v11}, Landroid/os/OpBatteryStatsInjector;->getScrubPIIStr(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-boolean v11, Lcom/android/server/am/vju;->ibl:Z

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, v1, Lcom/android/server/am/vju;->ywr:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x5

    invoke-static {v9, v15, v11}, Landroid/os/OpBatteryStatsInjector;->getScrubPIIStr(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/vju;->ibl:Z

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_6
    sget-boolean v0, Lcom/android/server/am/vju;->ibl:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms to scrub PII"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    long-to-double v5, v7

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "s was the duration of dumpLightBugreport"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/am/vju;->you:Landroid/os/DropBoxManager;

    if-eqz v0, :cond_8

    iget-object v1, v1, Lcom/android/server/am/vju;->sis:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    const-string v0, "mDropbox / mTag is still null"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const-string v0, "processPIIScrubing finish"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic igw(Lcom/android/server/am/vju;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/vju;->bio:J

    return-wide v0
.end method

.method static synthetic kth(Lcom/android/server/am/vju;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/vju;->cno:Z

    return p1
.end method

.method static synthetic rtg(Lcom/android/server/am/vju;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/vju;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/am/vju;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/vju;->rtg:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/am/vju;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/vju;->dma(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/vju;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vju;->rtg:Lcom/oneplus/config/ConfigObserver;

    return-object p1
.end method

.method static synthetic wtn(Lcom/android/server/am/vju;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/vju;->bio:J

    return-wide p1
.end method

.method static synthetic you(Lcom/android/server/am/vju;Lcom/android/server/am/vju$you;)Lcom/android/server/am/vju$you;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/vju;->ssp:Lcom/android/server/am/vju$you;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/am/vju;)Lcom/android/server/am/vju$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/vju;->ssp:Lcom/android/server/am/vju$you;

    return-object p0
.end method


# virtual methods
.method public collectBatteryStats(Lcom/android/internal/os/BatteryStatsImpl;IIIZ)V
    .locals 2

    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getIsOnBattery()Z

    move-result p3

    if-eq p2, p3, :cond_2

    if-eqz p2, :cond_2

    if-nez p5, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getHistoryCur()Landroid/os/BatteryStats$HistoryItem;

    move-result-object p2

    iget-byte p2, p2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    const/16 p2, 0x5a

    if-lt p4, p2, :cond_2

    :cond_0
    sget-boolean p2, Lcom/android/server/am/vju;->ibl:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "batteryStatus:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getHistoryCur()Landroid/os/BatteryStats$HistoryItem;

    move-result-object p3

    iget-byte p3, p3, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStats.getResetTime():"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getResetTime()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpBatteryStatsService"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getResetTime()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-eqz p4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    sub-long/2addr p4, p2

    iget-wide v0, p0, Lcom/android/server/am/vju;->bio:J

    cmp-long p4, p4, v0

    if-lez p4, :cond_2

    iget-boolean p4, p0, Lcom/android/server/am/vju;->cno:Z

    if-eqz p4, :cond_2

    iget-wide p4, p0, Lcom/android/server/am/vju;->wtn:J

    cmp-long p2, p2, p4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/vju;->zta:Landroid/content/Context;

    const-string p3, "dropbox"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/DropBoxManager;

    const-string p3, "battery_reset"

    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/vju;->gck(Ljava/lang/String;Landroid/os/DropBoxManager;)V

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getResetTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/vju;->wtn:J

    :cond_2
    return-void
.end method

.method public gck(Ljava/lang/String;Landroid/os/DropBoxManager;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpLightBugreport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/vju;->you:Landroid/os/DropBoxManager;

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/android/server/am/vju;->you:Landroid/os/DropBoxManager;

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/vju;->sis:Ljava/lang/String;

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/android/server/am/vju;->sis:Ljava/lang/String;

    :cond_1
    const-string p1, "-c"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p2, p1}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/vju;->kth:Lcom/android/server/am/vju$sis;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/vju;->kth:Lcom/android/server/am/vju$sis;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string p0, "dumpLightBugreport finish"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
