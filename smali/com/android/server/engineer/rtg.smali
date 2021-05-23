.class public Lcom/android/server/engineer/rtg;
.super Landroid/os/ShellCommand;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/rtg$you;
    }
.end annotation


# static fields
.field private static bio:Z = false

.field private static final cno:Ljava/lang/String;

.field private static final igw:Ljava/lang/String;

.field private static final kth:Z = true

.field private static final wtn:Z


# instance fields
.field private rtg:Landroid/net/LocalSocket;

.field private sis:Ljava/io/PrintWriter;

.field ssp:Landroid/content/BroadcastReceiver;

.field private tsu:Landroid/net/LocalServerSocket;

.field private you:Landroid/content/Context;

.field private zta:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/engineer/rtg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/engineer/rtg;->bio:Z

    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/engineer/rtg;->igw:Ljava/lang/String;

    const-string v2, "msmnile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/engineer/rtg;->igw:Ljava/lang/String;

    const-string v2, "sdm845"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/engineer/rtg;->wtn:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Lcom/android/server/engineer/rtg$zta;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/rtg$zta;-><init>(Lcom/android/server/engineer/rtg;)V

    iput-object v0, p0, Lcom/android/server/engineer/rtg;->ssp:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/engineer/rtg;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    iput-object p2, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "oneplus.intent.action.engineer.result"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/engineer/rtg;->ssp:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private bio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oem.engineermode.DoShellCommond"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "shell_cmd"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "yTime"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "zTime"

    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "com.oneplus.factorymode"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x1000000

    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "send do shell commond broadcast: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bud(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v0, "stopMonitorWifiStateChange"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string v0, "stop_monitor_wifi_state_change"

    invoke-direct {p0, p1, v0}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_0
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x64

    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bvj(I)I
    .locals 1

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    const/16 v0, 0xe

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0x96c

    return p1

    :cond_0
    const/16 p0, 0x24

    if-lt p1, p0, :cond_1

    const/16 v0, 0x40

    if-gt p1, v0, :cond_1

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x14

    add-int/lit16 p1, p1, 0x143c

    return p1

    :cond_1
    const/16 p0, 0x64

    if-lt p1, p0, :cond_2

    const/16 v0, 0x8c

    if-gt p1, v0, :cond_2

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x14

    add-int/lit16 p1, p1, 0x157c

    return p1

    :cond_2
    const/16 p0, 0x95

    if-lt p1, p0, :cond_3

    const/16 v0, 0xa5

    if-gt p1, v0, :cond_3

    sub-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x4

    mul-int/lit8 p1, p1, 0x14

    add-int/lit16 p1, p1, 0x1671

    return p1

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private cgv(Landroid/content/Context;Landroid/content/Intent;I)I
    .locals 12

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move v11, p3

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/16 p0, -0x60

    return p0
.end method

.method private cjf(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    const-string v0, "FAIL:Error"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "--query_cplc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "--query_ap_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "--query_battery_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "--query_serial_number"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "--query_write_protect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "--query_download_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "--query_sd_card_exists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "--query_indicate_info"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_8
    const-string v1, "--query_pcb_number"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "--query_battery_level"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "--query_product_test_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_b
    const-string v1, "--query_engineer_result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_c
    const-string v1, "--query_download_status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_d
    const-string v1, "--query_sim_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_e
    const-string v1, "--query_back_cover_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_f
    const-string v1, "--query_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v5, ""

    const-string v6, "FAIL:Access Fail"

    const-string v7, "OK:"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    new-instance p0, Ljava/io/File;

    const-string p1, "/mnt/vendor/persist/engineermode/test_mode"

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v0, "online"

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v1, "test mode file not exists"

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Lcom/android/server/engineer/ssp;->veq(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_1
    invoke-static {p1}, Lcom/android/server/engineer/ssp;->obl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    const-string p0, "offline"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_a

    :pswitch_1
    sget-object p1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v0, "query_ap_info "

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->dma()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->ibl()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p1, "storage"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/VolumeInfo;

    iget-object v0, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {p1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    goto :goto_5

    :cond_3
    move v3, v4

    :goto_5
    if-eqz v3, :cond_4

    const-string p0, "OK:SD Card Found"

    goto/16 :goto_a

    :cond_4
    const-string p0, "OK:SD Card Not Found"

    goto/16 :goto_a

    :catch_0
    move-exception p0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :pswitch_4
    const-string p0, "gsm.sim.state"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :pswitch_5
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "vendor.gsm.serial"

    goto :goto_7

    :cond_5
    const-string p0, "gsm.serial"

    :goto_7
    invoke-static {p0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto/16 :goto_8

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :pswitch_6
    :try_start_1
    new-instance p1, Lcom/android/server/engineer/zta;

    iget-object p0, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/server/engineer/zta;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/server/engineer/zta;->gck()V

    invoke-virtual {p1}, Lcom/android/server/engineer/zta;->wtn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/engineer/zta;->qbh()V

    if-eqz p0, :cond_8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_b

    :catch_1
    move-exception p0

    goto :goto_6

    :pswitch_7
    const-string p0, "persist.sys.oneplus.serialno"

    invoke-static {p0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->ibl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v4

    const-string p0, "OK:%s"

    invoke-static {p1, p0, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :pswitch_8
    const-string p0, "sys.oem.production.login.mode"

    invoke-static {p0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "OK:Switch is On"

    goto/16 :goto_a

    :cond_7
    const-string p0, "OK:Switch is Off"

    goto/16 :goto_a

    :pswitch_9
    invoke-static {}, Lcom/android/server/engineer/ssp;->gck()[B

    move-result-object p0

    if-eqz p0, :cond_8

    array-length p1, p0

    if-lez p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->sis([B)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_8
    :goto_8
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b

    :pswitch_a
    const-string p0, "/sys/class/power_supply/battery/short_c_hw_status"

    invoke-static {p0, v3}, Lcom/android/server/engineer/ssp;->zgw(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_9

    const-string p0, "OK:Battery Status Okay"

    goto/16 :goto_a

    :cond_9
    const-string p0, "FAIL:Battery DET Exception"

    goto/16 :goto_a

    :pswitch_b
    const-string p0, "OK:Download Over"

    goto/16 :goto_a

    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/sys/class/power_supply/battery/capacity"

    invoke-static {p1, v4}, Lcom/android/server/engineer/ssp;->zgw(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_a

    :pswitch_d
    :try_start_2
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.oneplus.factorymode"

    const-string v8, "com.oneplus.factorymode.assistant.CheckThemeConfig"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s_%s"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v9, "--"

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v7, v8, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "RESPONSE_SERVER_NAME"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/server/engineer/rtg$you;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/engineer/rtg$you;-><init>(Lcom/android/server/engineer/rtg;Lcom/android/server/engineer/rtg$zta;)V

    invoke-virtual {v1, p1}, Lcom/android/server/engineer/rtg$you;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    :goto_9
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_b
    const-string p0, "FAIL:Check Theme Code Fail"

    goto :goto_9

    :cond_c
    const-string p0, "FAIL:System Not Ready"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p0

    sget-object p1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception caught : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :pswitch_e
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result p0

    if-nez p0, :cond_e

    return-void

    :cond_e
    invoke-static {}, Lcom/android/server/engineer/tsu;->tsu()Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "OK:WP ON"

    goto :goto_a

    :cond_f
    const-string p0, "OK:WP OFF"

    goto :goto_a

    :pswitch_f
    const-string p0, "OK:190101"

    :goto_a
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x779f4d3f -> :sswitch_f
        -0x60f7be46 -> :sswitch_e
        -0x545a992e -> :sswitch_d
        -0x401e878e -> :sswitch_c
        -0x3afc672a -> :sswitch_b
        -0x33fb9777 -> :sswitch_a
        -0x17160e05 -> :sswitch_9
        -0xc9159d0 -> :sswitch_8
        -0x862ee63 -> :sswitch_7
        0x194b0174 -> :sswitch_6
        0x1f170223 -> :sswitch_5
        0x25704998 -> :sswitch_4
        0x2fd2c31d -> :sswitch_3
        0x4110485b -> :sswitch_2
        0x4332eca7 -> :sswitch_1
        0x7c600d5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic cno(Lcom/android/server/engineer/rtg;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/rtg;->tsu:Landroid/net/LocalServerSocket;

    return-object p1
.end method

.method private dma()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-direct {p0, v0}, Lcom/android/server/engineer/rtg;->ire(Landroid/net/wifi/WifiManager;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/engineer/rtg;->oif(I)I

    move-result p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wifi State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nSSID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nBSSID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nMAC Addr: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nRSSI: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nCurrentChannel: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\nscanResults: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ear(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "--reset_engineer_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "--reset_write_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "--reset_download_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "--reset_back_cover_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "OK:Reset Success"

    const-string v5, "FAIL:Reset Fail"

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_3

    :cond_1
    const p0, 0xf4278

    new-array p1, v4, [B

    invoke-static {p0, p1, v4}, Lcom/android/server/engineer/tsu;->bio(I[BI)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_2
    const/16 p0, 0x80

    new-array p0, p0, [B

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->cjf([B)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/android/server/engineer/rtg;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->hmo()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lcom/android/server/secrecy/sis/ssp/you;->kth(I)Z

    move-result p0

    if-eqz p0, :cond_6

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41a803ed -> :sswitch_3
        -0x28c3f196 -> :sswitch_2
        -0x226aaa21 -> :sswitch_1
        0x816af5d -> :sswitch_0
    .end sparse-switch
.end method

.method private fto()Z
    .locals 2

    const-string p0, "persist.radio.multisim.config"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string v1, "dsds"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dsda"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "tsts"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private gck(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c7ee80e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x2a7530aa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--provision_keybox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "--verify_keybox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "Pass\n"

    const-string v1, "Fail:%s\n"

    const/4 v4, 0x3

    const/4 v5, 0x2

    const-string v6, "MTK not support yet"

    const/4 v7, 0x4

    const-string v8, "Fail\n"

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result p0

    if-nez p0, :cond_b

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 p1, 0xa

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/engineer/ssp;->igw()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->ssp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v7, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    move p1, v3

    :goto_3
    if-ge p1, v7, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    invoke-static {p0}, Lcom/android/server/engineer/ssp;->fto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_4
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_6
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v6, p0

    move v9, v3

    :goto_5
    if-ge v9, v6, :cond_7

    aget-byte v10, p0, v9

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/android/server/engineer/ssp;->igw()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p1}, Lcom/android/server/engineer/ssp;->ssp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v7, :cond_a

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    :cond_8
    move p1, v3

    :goto_6
    if-ge p1, v7, :cond_9

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_9
    invoke-static {p0}, Lcom/android/server/engineer/ssp;->fto(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_4

    :cond_a
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    sget-object p0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    invoke-static {p0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method private gwm(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    :try_start_0
    const-string p0, "com.android.id.impl.IdProviderImpl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getGUID"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private hmo(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "FAIL:Unknown Argument"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x65299362

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_2

    const v2, -0x1cd6367

    if-eq v1, v2, :cond_1

    const v2, 0x7dc2e617

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "--update_engineer_result"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v1, "--update_back_cover_color"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "--update_serial_number"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v1, "FAIL:Invalid Parameter"

    const-string v2, "OK:Update Success"

    const-string v5, "FAIL:Update Fail"

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->ibl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "/mnt/vendor/persist/engineermode/oem_serial_no"

    invoke-static {p1, p0}, Lcom/android/server/engineer/ssp;->veq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    :try_start_0
    const-string p1, "persist.sys.oneplus.serialno"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Oneplus serial no caught exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ltz p1, :cond_9

    const/16 v1, 0x80

    if-ge p1, v1, :cond_9

    if-ltz p0, :cond_9

    if-gt p0, v4, :cond_9

    int-to-byte p0, p0

    :try_start_3
    invoke-static {p1, p0}, Lcom/android/server/engineer/ssp;->ear(IB)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    :goto_3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "FAIL:ERROR"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->ywr(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p1, 0x10

    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lcom/android/server/secrecy/sis/ssp/you;->kth(I)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :goto_4
    return-void
.end method

.method private ibl()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/io/File;

    const-string v1, "data/vendor/oemnvitems/447"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v2, "data/vendor/oemnvitems/447 exists"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->zgw()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "macList  size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Lcom/android/server/engineer/tsu;->rtg()[B

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    invoke-static {v4}, Lcom/android/server/engineer/ssp;->sis([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    const-string v5, "gsm.serial"

    const-string v6, "null"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "vendor.Oneplus.network.carrier_ver"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    :try_start_0
    sget-object v8, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "telephonyManager : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    const/4 v10, 0x2

    if-ne v8, v10, :cond_4

    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v8

    move-object v11, v8

    move-object v8, v3

    move-object v3, v11

    goto :goto_3

    :cond_4
    move-object v3, v1

    move-object v8, v3

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v8, v1

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v8

    :goto_4
    move-object v8, v1

    :goto_5
    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->fto()Z

    move-result v9

    if-nez v9, :cond_5

    move-object v8, v3

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getMeid()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v1, v6

    :cond_7
    iget-object v7, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/android/server/engineer/rtg;->gwm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    goto :goto_6

    :cond_8
    move-object v6, v7

    :goto_6
    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->qbh()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WIFI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nWIFI2: null\nBT: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nPCBA: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMMI: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nCarrier: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nIMEI1: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nIMEI2: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMEID: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nGUID: "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->ugm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private igw(Ljava/io/PrintWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string v0, "get_config_params"

    invoke-direct {p0, p1, v0}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_0
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x64

    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ire(Landroid/net/wifi/WifiManager;)Ljava/lang/StringBuffer;
    .locals 4

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : Level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Frequency "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ;  "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private kth(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oem.engineermode.DoShellCommond"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "shell_cmd"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.oneplus.factorymode"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "send do shell commond broadcast: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;
    .locals 7

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "--elal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "--eial"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "--esn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "--ela"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "--eia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "--ecn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "--ez"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_7
    const-string v2, "--eu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "--es"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_9
    const-string v2, "--el"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_a
    const-string v2, "--ei"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_b
    const-string v2, "--ef"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v2, "-p"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    goto :goto_1

    :sswitch_d
    const-string v2, "-e"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v4

    :cond_0
    :goto_1
    const-string v0, ","

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    :cond_1
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_3

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid boolean value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    move v3, v4

    :cond_4
    :goto_3
    invoke-virtual {p0, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    :goto_4
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [J

    :goto_5
    array-length v3, v0

    if-ge v4, v3, :cond_5

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v0

    :goto_6
    if-ge v4, v3, :cond_6

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [I

    :goto_7
    array-length v3, v0

    if-ge v4, v3, :cond_7

    aget-object v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad component name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    :goto_8
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    goto :goto_9

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d8 -> :sswitch_d
        0x5e3 -> :sswitch_c
        0x152a41 -> :sswitch_b
        0x152a44 -> :sswitch_a
        0x152a47 -> :sswitch_9
        0x152a4e -> :sswitch_8
        0x152a50 -> :sswitch_7
        0x152a55 -> :sswitch_6
        0x2901df0 -> :sswitch_5
        0x2901e9d -> :sswitch_4
        0x2901efa -> :sswitch_3
        0x2901fe0 -> :sswitch_2
        0x4f73b56f -> :sswitch_1
        0x4f73c0b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private obl(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "cmd is null!"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "--generate_attk_key_pair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "--verify_attk_key_pair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "--export_attk_public_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "--get_tee_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_4
    const-string v1, "--enable_rpmb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "--verify_ali_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "--verify_attk_key_pair_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "--crypto_eng_verify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "--get_device_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    const-wide/16 v3, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "mtk_trustonic_tee_version 1.0\n"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/engineer/rtg;->veq(B)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_8

    :pswitch_2
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "enable_rpmb"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_1
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "get_device_id"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_2
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "export_attk_public_key"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_3
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    :pswitch_5
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "verify_ali_key"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_4
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "verify_attk_key_pair_only"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_5
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :pswitch_7
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "verify_attk_key_pair"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_6
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6

    :pswitch_8
    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string p2, "generate_attk_key_pair"

    invoke-direct {p0, p1, p2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_7
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7

    :cond_2
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60415fa5 -> :sswitch_8
        -0x60361868 -> :sswitch_7
        -0x20dab99e -> :sswitch_6
        -0x194d63e8 -> :sswitch_5
        -0xde8b811 -> :sswitch_4
        -0x4d2d5c -> :sswitch_3
        0x1dbb813 -> :sswitch_2
        0x1fb407c9 -> :sswitch_1
        0x40ec43c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private oxb(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, ":"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "--execute_switch_log"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "--execute_start_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "--execute_show_production_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "--execute_switch_production_mode"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "--execute_wifi_connect"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v4, "--execute_engineer_order"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto/16 :goto_1

    :sswitch_6
    const-string v4, "--execute_launch_wifi_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v4, "--execute_check_calibration_status"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_8
    const-string v4, "--execute_add_cover_ui"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_9
    const-string v4, "--execute_switch_wifi_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "--execute_power_off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v4, "--execute_model_test"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_c
    const-string v4, "--execute_stop_mmi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_d
    const-string v4, "--execute_remove_cover_ui"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto :goto_1

    :sswitch_e
    const-string v4, "--execute_check_key_status"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto :goto_1

    :sswitch_f
    const-string v4, "--execute_start_dsocket"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto :goto_1

    :sswitch_10
    const-string v4, "--execute_master_clear"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_11
    const-string v4, "--execute_reboot_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto :goto_1

    :sswitch_12
    const-string v4, "--execute_shutdown_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto :goto_1

    :sswitch_13
    const-string v4, "--execute_detect_ms_result"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_14
    const-string v4, "--execute_stop_dsocket"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v4, -0x1

    :goto_1
    const-string v9, "%s_%s"

    const-string v11, "com.oneplus.factorymode.assistant.SmartCoverUIService"

    const-string v12, "android.intent.extra.KEY_CONFIRM"

    const-string v13, "com.oem.autotest.connector.AutoTestServer"

    const-string v14, "com.oem.autotest"

    const-string v15, "com.oem.engineermode.EngineerModeMain"

    const-string v10, "exception caught : "

    const-string v5, ""

    const-wide/16 v16, 0x1f4

    const-string v7, "FAIL:Error"

    const-string v6, "FAIL:ERROR"

    const-string v8, "com.oneplus.factorymode"

    move-object/from16 v18, v13

    const-string v13, "exception caught "

    move-object/from16 v19, v14

    const-string v14, "FAIL:System Not Ready"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_18

    :pswitch_0
    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v4, "execute wifi connect"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-string v10, "com.oneplus.factorymode.assistant.EngineerWifiHelper"

    invoke-direct {v4, v8, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v8, "com.oneplus.factorymode.assistant.EngineerWifiHelper.connectTargetAP"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v8, 0x10000000

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "--"

    invoke-virtual {v1, v11, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v10, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v10, v5

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "RESPONSE_SERVER_NAME"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v8, "intent set end"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/server/engineer/rtg$you;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/engineer/rtg$you;-><init>(Lcom/android/server/engineer/rtg;Lcom/android/server/engineer/rtg$zta;)V

    invoke-virtual {v3, v1}, Lcom/android/server/engineer/rtg$you;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_2
    const-string v0, "FAIL:Update Wifi State Fail"

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_18

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_1
    :try_start_1
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    const-string v11, "com.oneplus.factorymode.devicecalibrationdata.DeviceDataDetectService"

    invoke-direct {v4, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const-string v12, "--"

    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v11, v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v11, v5

    invoke-static {v8, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "RESPONSE_SERVER_NAME"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/server/engineer/rtg$you;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/server/engineer/rtg$you;-><init>(Lcom/android/server/engineer/rtg;Lcom/android/server/engineer/rtg$zta;)V

    invoke-virtual {v3, v1}, Lcom/android/server/engineer/rtg$you;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_4
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_5
    const-string v0, "FAIL:Check Calibration Status Fail"

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_18

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_9

    :pswitch_2
    :try_start_2
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.oem.oemlogkit.getLog"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.oem.oemlogkit"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    :cond_7
    const-string v0, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "persist.sys.assert.panic"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.vendor.oem.dump"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oemlogkit"

    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    const-string v0, "oemlogkit"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :cond_8
    :goto_4
    const-string v0, "OK:Switch Log Done"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_9
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_18

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_3
    const-string v0, "stopDiagSocket"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string v0, "OK:Stop Success"

    :goto_5
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_4
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v3, "FAIL:INVALID PARAMETER"

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b

    const/4 v1, 0x0

    :try_start_4
    aget-object v1, v0, v1

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v1}, Lcom/android/server/engineer/ssp;->oif(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v0}, Lcom/android/server/engineer/ssp;->gwm(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v3, "vendor.oem.diag.socket.ip"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vendor.oem.diag.socket.port"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "vendor.oem.diag.socket.retry"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kona"

    sget-object v1, Lcom/android/server/engineer/rtg;->igw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "vendor.oem.diag.socket.channel"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v0, "startDiagSocket"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string v0, "OK:Start Success"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_b
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_c
    const-string v0, "FAIL:Permission Deined"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_5
    iget-object v1, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string v2, "check_key_status"

    invoke-direct {v0, v1, v2}, Lcom/android/server/engineer/rtg;->kth(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_7
    sget-boolean v0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz v0, :cond_2a

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7

    :pswitch_6
    :try_start_5
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OK:Remove Cover UI Success"

    :goto_8
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_d
    const-string v0, "FAIL:Remove Cover UI Fail"

    goto :goto_8

    :cond_e
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_18

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_16

    :pswitch_7
    :try_start_6
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v8, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "OK:Add Cover UI Success"

    :goto_a
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_f
    const-string v0, "FAIL:Add Cover UI Fail"

    goto :goto_a

    :cond_10
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_18

    :catch_5
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_8
    :try_start_7
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.intent.action.REQUEST_SHUTDOWN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v0, "OK:Shutdown Started"

    :goto_b
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Shutdown Fail, Error Code: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_12
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_18

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_9
    :try_start_8
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.REBOOT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v4, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "OK:Reboot Started"

    :goto_c
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Reboot Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_14
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_18

    :catch_7
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_a
    :try_start_9
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.wifitest.WifiAdbHelper"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v0, "OK:Launch Wifi MMI Success"

    :goto_d
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Launch Wifi MMI Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_16
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_18

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_b
    :try_start_a
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.assistant.SwitchWifiMMI"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "OK:Switch Wifi MMI Success"

    :goto_e
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_17
    const-string v0, "FAIL:Switch Wifi MMI Fail"

    goto :goto_e

    :cond_18
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    goto/16 :goto_18

    :catch_9
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_c
    :try_start_b
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.ShowRemoteMessage"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v0, "OK:Show Message Success"

    :goto_f
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Show Message Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_1a
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_18

    :catch_a
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_11

    :pswitch_d
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.DetectMasterClearResult"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "sys.masterclear.result"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const-string v0, "OK:Detect Success"

    goto/16 :goto_5

    :cond_1b
    if-nez v0, :cond_1c

    const-string v0, "FAIL:Detect Failed"

    goto/16 :goto_5

    :cond_1c
    const-string v0, "FAIL:Retry"

    goto/16 :goto_5

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_1e
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_e
    :try_start_c
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.assistant.SwitchProductionMode"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "OK:Switch Mode Success"

    :goto_10
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1f
    const-string v0, "FAIL:Switch Mode Fail"

    goto :goto_10

    :cond_20
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_18

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_f
    :try_start_d
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v0, "OK:Start Engineer Order Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_21
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto/16 :goto_18

    :catch_c
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_14

    :pswitch_10
    :try_start_e
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    const-string v3, "modeltest"

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_22
    new-instance v3, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.oppo.engineermode.manualtest.modeltest.ModelTest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_23

    const-string v0, "OK:Start ModelTest Success"

    :goto_12
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Start ModelTest Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_24
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    goto/16 :goto_18

    :catch_d
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_14

    :pswitch_11
    :try_start_f
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v15}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x1000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "order"

    const-string v4, "*#911#"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "isfromshell"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v0, "OK:Start Power Off Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_25
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    goto/16 :goto_18

    :catch_e
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_14

    :pswitch_12
    :try_start_10
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-direct {v0, v0}, Lcom/android/server/engineer/rtg;->lqr(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.factorymode.manualtest.MasterClear"

    invoke-direct {v3, v8, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lcom/android/server/engineer/rtg;->cgv(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v0

    invoke-static {v0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "OK:Start Master Clear Success"

    :goto_13
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FAIL:Start Master Clear Fail, Error Code "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_27
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto/16 :goto_18

    :catch_f
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_14
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :pswitch_13
    :try_start_11
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "OK:Stop MMI Server Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_28
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop mmi server exception caught : "

    goto :goto_15

    :pswitch_14
    move-object/from16 v3, v18

    move-object/from16 v4, v19

    :try_start_12
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_29

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-static/range {v16 .. v17}, Landroid/os/SystemClock;->sleep(J)V

    const-string v0, "OK:Start MMI Server Success"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_18

    :cond_29
    invoke-virtual {v2, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_18

    :catch_11
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start mmi server exception caught : "

    :goto_15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_17
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2a
    :goto_18
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7430403c -> :sswitch_14
        -0x6f6b949c -> :sswitch_13
        -0x6a482e0b -> :sswitch_12
        -0x69f0f8ba -> :sswitch_11
        -0x5c039fa6 -> :sswitch_10
        -0x3d93faf0 -> :sswitch_f
        -0x1290a56d -> :sswitch_e
        -0x71598f3 -> :sswitch_d
        -0x5815fca -> :sswitch_c
        0xf240492 -> :sswitch_b
        0x26942d4b -> :sswitch_a
        0x35c1b0e0 -> :sswitch_9
        0x45553c24 -> :sswitch_8
        0x55700ba8 -> :sswitch_7
        0x57ace341 -> :sswitch_6
        0x643ca528 -> :sswitch_5
        0x648bd7ea -> :sswitch_4
        0x6a8d7408 -> :sswitch_3
        0x70914a99 -> :sswitch_2
        0x75496b82 -> :sswitch_1
        0x7cfd4063 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private qbh()Ljava/lang/String;
    .locals 9

    const-string p0, "getCarrierFlag"

    const-string v0, "00000000"

    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v3, "extTelephony get carrier flag"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "generalGetter"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Bundle;

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    aput-object v4, v3, v8

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object p0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "carrierFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get carrier flag fail, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v0
.end method

.method static synthetic rtg(Lcom/android/server/engineer/rtg;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/rtg;->rtg:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic sis(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/rtg;->tsu:Landroid/net/LocalServerSocket;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/rtg;->rtg:Landroid/net/LocalSocket;

    return-object p0
.end method

.method private ugm()Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->vdb()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    invoke-direct {p0}, Lcom/android/server/engineer/rtg;->ywr()J

    move-result-wide v4

    div-long/2addr v4, v2

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v2, v6

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v2, v1

    const-string v0, "Storage: Total:%d, Used:%d, Free:%d"

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private vdb()J
    .locals 4

    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private veq(B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/engineer/ssp;->igw()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/engineer/ssp;->ssp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private vju(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object p1, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v0, "startMonitorWifiStateChange"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    const-string v0, "start_monitor_wifi_state_change"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/engineer/rtg;->bio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    :goto_0
    sget-boolean p0, Lcom/android/server/engineer/rtg;->bio:Z

    if-eqz p0, :cond_0

    const-wide/16 p0, 0x64

    invoke-static {p0, p1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private wtn(Ljava/io/PrintWriter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "keyboxxml"

    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const-string v1, "init.svc.keyboxxml"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "stopped"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x64

    const-string v5, "ERROR"

    const/16 v6, 0xa

    if-eqz v1, :cond_7

    sget-boolean v0, Lcom/android/server/engineer/rtg;->wtn:Z

    if-eqz v0, :cond_2

    const-string v0, "chmodkeyboxxmldir"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    move v0, p0

    :goto_1
    const-string v1, "init.svc.chmodkeyboxxmldir"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v6, :cond_1

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_2
    :goto_2
    const-string v0, "ro.boot.project_name"

    const-string v1, "18821"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "18825"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "KmInstallKeybox18827"

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KmInstallKeybox"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "init.svc.KmInstallKeybox18827"

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init.svc.KmInstallKeybox"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "rmkeyboxxml"

    invoke-static {p0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string p0, "OK"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 p0, p0, 0x1

    if-lt p0, v6, :cond_6

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v6, :cond_8

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_0
.end method

.method static synthetic you(Lcom/android/server/engineer/rtg;)Ljava/io/PrintWriter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    return-object p0
.end method

.method private ywr()J
    .locals 4

    new-instance p0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v2, p0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private zgw()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_WIFI_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/wifi/IOpWifiManager;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    const-string v1, "opWifiManager.getWifiMacFromNvItem  "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/oneplus/android/wifi/IOpWifiManager;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zta()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public oif(I)I
    .locals 2

    const/16 v0, 0x96c

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9b4

    if-gt p1, v0, :cond_0

    add-int/lit16 v0, p1, -0x96c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/engineer/rtg;->bvj(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x143c

    if-lt p1, v0, :cond_1

    const/16 v0, 0x14c8

    if-gt p1, v0, :cond_1

    add-int/lit16 v0, p1, -0x143c

    div-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/android/server/engineer/rtg;->bvj(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    const/16 v0, 0x157c

    if-lt p1, v0, :cond_2

    const/16 v0, 0x1644

    if-gt p1, v0, :cond_2

    add-int/lit16 v0, p1, -0x157c

    div-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/server/engineer/rtg;->bvj(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x1671

    if-lt p1, v0, :cond_3

    const/16 v0, 0x16c1

    if-gt p1, v0, :cond_3

    add-int/lit16 v0, p1, -0x1671

    div-int/lit8 v0, v0, 0x14

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0x95

    invoke-direct {p0, v0}, Lcom/android/server/engineer/rtg;->bvj(I)I

    move-result p0

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "persist.sys.hw_status_flag"

    const-string v4, "FAIL:Error"

    const-string v5, "/"

    const-string v6, ""

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return v8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    iget-object v7, v1, Lcom/android/server/engineer/rtg;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v7, v2}, Lcom/android/server/engineer/OneplusEngineerService;->cjf(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_10
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_1
    if-eqz v2, :cond_28

    :try_start_1
    sget-object v7, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cmd = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v14, 0xc

    const/4 v15, 0x4

    const/4 v13, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "--update_engineer_result"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "--execute_switch_log"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2b

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "--query_cplc"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "--execute_start_mmi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "--execute_show_production_message"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "--execute_switch_production_mode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1e

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "--execute_wifi_connect"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x23

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "--execute_engineer_order"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1d

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "--get_carrier_id"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x39

    goto/16 :goto_1

    :sswitch_9
    const-string v7, "--execute_launch_wifi_mmi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x22

    goto/16 :goto_1

    :sswitch_a
    const-string v7, "--execute_check_calibration_status"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x10

    goto/16 :goto_1

    :sswitch_b
    const-string v7, "--execute_add_cover_ui"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x26

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "--query_ap_info"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "--query_battery_status"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x5

    goto/16 :goto_1

    :sswitch_e
    const-string v7, "--generate_attk_key_pair"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2c

    goto/16 :goto_1

    :sswitch_f
    const-string v7, "--execute_switch_wifi_mmi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x21

    goto/16 :goto_1

    :sswitch_10
    const-string v7, "--query_serial_number"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v7, "--execute_power_off"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1b

    goto/16 :goto_1

    :sswitch_12
    const-string v7, "--query_write_protect"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v13

    goto/16 :goto_1

    :sswitch_13
    const-string v7, "--verify_attk_key_pair"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2d

    goto/16 :goto_1

    :sswitch_14
    const-string v7, "--query_download_mode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x7

    goto/16 :goto_1

    :sswitch_15
    const-string v7, "--query_sd_card_exists"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v14

    goto/16 :goto_1

    :sswitch_16
    const-string v7, "--execute_model_test"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1c

    goto/16 :goto_1

    :sswitch_17
    const-string v7, "--reset_engineer_result"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x16

    goto/16 :goto_1

    :sswitch_18
    const-string v7, "--stop_monitor_wifi_state_change"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3c

    goto/16 :goto_1

    :sswitch_19
    const-string v7, "--export_attk_public_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x30

    goto/16 :goto_1

    :sswitch_1a
    const-string v7, "-mmi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3f

    goto/16 :goto_1

    :sswitch_1b
    const-string v7, "-get"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x40

    goto/16 :goto_1

    :sswitch_1c
    const-string v7, "-bcc"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3d

    goto/16 :goto_1

    :sswitch_1d
    const-string v7, "-wp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3e

    goto/16 :goto_1

    :sswitch_1e
    const-string v7, "--get_tee_version"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x34

    goto/16 :goto_1

    :sswitch_1f
    const-string v7, "--update_back_cover_color"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x11

    goto/16 :goto_1

    :sswitch_20
    const-string v7, "--execute_stop_mmi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x19

    goto/16 :goto_1

    :sswitch_21
    const-string v7, "--execute_remove_cover_ui"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x27

    goto/16 :goto_1

    :sswitch_22
    const-string v7, "--query_indicate_info"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_23
    const-string v7, "--query_pcb_number"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_24
    const-string v7, "--enable_rpmb"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x32

    goto/16 :goto_1

    :sswitch_25
    const-string v7, "--set_carrier_id"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3a

    goto/16 :goto_1

    :sswitch_26
    const-string v7, "--execute_check_key_status"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x28

    goto/16 :goto_1

    :sswitch_27
    const-string v7, "--query_battery_level"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto/16 :goto_1

    :sswitch_28
    const-string v7, "--verify_ali_key"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2f

    goto/16 :goto_1

    :sswitch_29
    const-string v7, "--verify_attk_key_pair_only"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2e

    goto/16 :goto_1

    :sswitch_2a
    const-string v7, "--reset_write_protect"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x15

    goto/16 :goto_1

    :sswitch_2b
    const-string v7, "--reset_download_mode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x17

    goto/16 :goto_1

    :sswitch_2c
    const-string v7, "--provision_keybox"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x36

    goto/16 :goto_1

    :sswitch_2d
    const-string v7, "--install_keybox"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x35

    goto/16 :goto_1

    :sswitch_2e
    const-string v7, "--query_product_test_mode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_2f
    const-string v7, "--query_engineer_result"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x6

    goto/16 :goto_1

    :sswitch_30
    const-string v7, "--execute_start_dsocket"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x29

    goto/16 :goto_1

    :sswitch_31
    const-string v7, "--query_download_status"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v15

    goto/16 :goto_1

    :sswitch_32
    const-string v7, "--reset_back_cover_color"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_33
    const-string v7, "--query_sim_state"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_34
    const-string v7, "--execute_master_clear"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1a

    goto/16 :goto_1

    :sswitch_35
    const-string v7, "--crypto_eng_verify"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x33

    goto/16 :goto_1

    :sswitch_36
    const-string v7, "--get_device_id"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x31

    goto/16 :goto_1

    :sswitch_37
    const-string v7, "--query_back_cover_color"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto/16 :goto_1

    :sswitch_38
    const-string v7, "--update_serial_number"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x13

    goto :goto_1

    :sswitch_39
    const-string v7, "--execute_reboot_device"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x24

    goto :goto_1

    :sswitch_3a
    const-string v7, "--execute_shutdown_device"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x25

    goto :goto_1

    :sswitch_3b
    const-string v7, "--get_config_params"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x38

    goto :goto_1

    :sswitch_3c
    const-string v7, "--execute_detect_ms_result"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x1f

    goto :goto_1

    :sswitch_3d
    const-string v7, "--execute_stop_dsocket"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x2a

    goto :goto_1

    :sswitch_3e
    const-string v7, "--query_version"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v8

    goto :goto_1

    :sswitch_3f
    const-string v7, "--start_monitor_wifi_state_change"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x3b

    goto :goto_1

    :sswitch_40
    const-string v7, "--verify_keybox"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_10
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    const/16 v7, 0x37

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v7, -0x1

    :goto_1
    const/16 v17, 0xb7

    const-string v12, "OK:"

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_17

    :pswitch_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v11, 0x76

    if-eq v7, v11, :cond_9

    const/16 v11, 0xc4a

    if-eq v7, v11, :cond_8

    const/16 v11, 0xc51

    if-eq v7, v11, :cond_7

    const/16 v11, 0xc8f

    if-eq v7, v11, :cond_6

    const/16 v11, 0xed9

    if-eq v7, v11, :cond_5

    const v11, 0x17c42

    if-eq v7, v11, :cond_4

    const v11, 0x184e5

    if-eq v7, v11, :cond_3

    goto :goto_2

    :cond_3
    const-string v7, "dlm"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v16, 0x6

    goto :goto_3

    :cond_4
    const-string v7, "bcc"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v16, 0x2

    goto :goto_3

    :cond_5
    const-string v7, "wp"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v16, v13

    goto :goto_3

    :cond_6
    const-string v7, "ds"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move/from16 v16, v15

    goto :goto_3

    :cond_7
    const-string v7, "bs"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v16, 0x5

    goto :goto_3

    :cond_8
    const-string v7, "bl"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v16, 0x3

    goto :goto_3

    :cond_9
    const-string v7, "v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_a

    move/from16 v16, v8

    goto :goto_3

    :cond_a
    :goto_2
    const/16 v16, -0x1

    :goto_3
    packed-switch v16, :pswitch_data_1

    goto/16 :goto_17

    :pswitch_1
    :try_start_3
    const-string v3, "sys.oem.production.login.mode"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "OK:Switch is On"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_b
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "OK:Switch is Off"
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_2
    :try_start_5
    const-string v4, "/sys/class/power_supply/battery/short_c_hw_status"

    invoke-static {v4, v13}, Lcom/android/server/engineer/ssp;->zgw(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v14, :cond_d

    const-string v11, "[0-9]*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v7, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v7, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v8, 0x8

    invoke-virtual {v7, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v8, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "check battery stats time:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v5, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v7, "check battery stats time invalidate"

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v5, "OK:HW Check Battery Status Okay"

    :goto_7
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v5, "FAIL:HW Check  Battery DET Exception"

    goto :goto_7

    :goto_8
    const-string v4, "/sys/class/power_supply/battery/short_ic_otp_status"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/engineer/ssp;->zgw(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_f

    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v5, "OK:IC Check Battery Status Okay"

    :goto_9
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v5, "FAIL:IC Check Battery DET Exception"

    goto :goto_9

    :goto_a
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "hw_errcode:6(battery hw check err)"

    :goto_b
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_10
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "hw_errcode:-6(battery hw check repair)"

    goto :goto_b

    :cond_11
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "hw_errcode:0(no error)"

    goto :goto_b

    :goto_c
    const-string v3, "persist.sys.hw_errTime"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hw_err_time:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_12
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "hw_err_time:0000/00/00/0000"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d
    const-string v3, "persist.sys.ic_status_flag"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "ic_errcode:7(battery ic check err)"

    :goto_e
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_13
    const-string v3, "persist.sys.ic_status_flag"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "ic_errcode:-7(battery ic check repair)"

    goto :goto_e

    :cond_14
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "ic_errcode:0(no error)"

    goto :goto_e

    :goto_f
    const-string v3, "persist.sys.ic_errTime"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ic_err_time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_15
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "ic_err_time:0000/00/00/0000"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_17

    :catch_1
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_3
    :try_start_7
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v3}, Lcom/android/server/engineer/OneplusEngineerService;->ibl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v4, "download over"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "OK:Download Over"

    :goto_10
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_16
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "FAIL:Download Not Finished"

    goto :goto_10

    :pswitch_4
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/engineer/rtg;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v5}, Lcom/android/server/engineer/OneplusEngineerService;->oif()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :pswitch_5
    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/you;->sis()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "FAIL:Access Fail"

    goto :goto_10

    :cond_17
    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_6
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_18
    :try_start_8
    invoke-static {}, Lcom/android/server/engineer/tsu;->tsu()Z

    move-result v3

    if-nez v3, :cond_19

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "OK:WP ON"

    goto :goto_10

    :cond_19
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "OK:WP OFF"

    goto :goto_10

    :pswitch_7
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v4, "OK:180112"
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_10

    :catch_2
    :try_start_9
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_10
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :pswitch_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-wide/16 v5, 0x1f4

    const-string v7, "com.oem.autotest.connector.AutoTestServer"

    const-string v8, "com.oem.autotest"

    const-string v11, "FAIL:System Not Ready"

    if-eqz v3, :cond_1b

    :try_start_b
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK:Start MMI Server Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1a
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_17

    :catch_3
    move-exception v0

    move-object v2, v0

    :try_start_c
    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start mmi server exception caught : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1b
    const-string v3, "stop"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v2, :cond_28

    :try_start_d
    const-class v2, Landroid/app/ActivityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->you:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v7}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK:Stop MMI Server Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1c
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_17

    :catch_4
    move-exception v0

    move-object v2, v0

    :try_start_e
    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop mmi server exception caught : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:ERROR"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_17

    :catch_5
    move-exception v0

    move-object v2, v0

    :try_start_f
    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mmi command exception caught : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_9
    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result v2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_10
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v2, :cond_28

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v2}, Lcom/android/server/engineer/OneplusEngineerService;->hmo()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK:enable wp success"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1d
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:enable wp fail"

    goto :goto_11

    :cond_1e
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "Unknown argument"
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_11

    :catch_6
    :try_start_11
    invoke-static {}, Lcom/android/server/engineer/tsu;->tsu()Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v2, "WP ON"

    :goto_12
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1f
    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v2, "WP OFF"
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_10
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_12

    :pswitch_a
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, "reset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/secrecy/sis/ssp/you;->kth(I)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK:RESET OK"

    :goto_13
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_20
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:RESET FAIL"

    goto :goto_13

    :cond_21
    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {v2}, Lcom/android/server/engineer/ssp;->ywr(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/android/server/secrecy/sis/ssp/you;->kth(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK"

    goto :goto_13

    :cond_22
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:IO EXCEPTION"

    goto :goto_13

    :cond_23
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:INVALID PARAMETER"
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_13

    :catch_7
    :try_start_13
    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/you;->sis()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v2, "FAIL:ACCESS FAIL"

    goto :goto_12

    :cond_24
    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_10
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_12

    :pswitch_b
    :try_start_14
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Lcom/android/server/engineer/rtg;->bud(Ljava/io/PrintWriter;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_17

    :catch_8
    move-exception v0

    move-object v1, v0

    :goto_14
    :try_start_15
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_10
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_17

    :pswitch_c
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ; zTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/engineer/rtg;->vju(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_17

    :catch_9
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :pswitch_d
    move v2, v13

    :try_start_17
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v17, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set carrier id command, carrier id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_26

    const/4 v3, 0x3

    if-ge v2, v3, :cond_26

    invoke-static {v2}, Lcom/android/server/secrecy/sis/ssp/you;->bio(I)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK:SET OK"

    :goto_15
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_25
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:SET FAIL"

    goto :goto_15

    :cond_26
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "FAIL:INVALID ID"

    goto :goto_15

    :cond_27
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v3, "OK:NO NEED SET"
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_15

    :catch_a
    move-exception v0

    move-object v2, v0

    :try_start_18
    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set carrier id command exception caught : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v2, "FAIL:SET ERROR"
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_12

    :pswitch_e
    move v2, v13

    :try_start_19
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v17, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/you;->tsu()I

    move-result v2

    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get carrier id command, current carrier id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto/16 :goto_17

    :catch_b
    move-exception v0

    move-object v2, v0

    :try_start_1a
    sget-object v3, Lcom/android/server/engineer/rtg;->cno:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get carrier id command exception caught : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    const-string v2, "FAIL:GET ERROR"
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto/16 :goto_12

    :pswitch_f
    move v2, v13

    :try_start_1b
    new-array v2, v2, [I

    const/16 v3, 0x80

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "sprint"

    const-string v3, "ro.boot.opcarrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Lcom/android/server/engineer/rtg;->igw(Ljava/io/PrintWriter;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_17

    :catch_c
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :pswitch_10
    :try_start_1c
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/rtg;->gck(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_10
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_17

    :catch_d
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :pswitch_11
    :try_start_1d
    iget-object v2, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Lcom/android/server/engineer/rtg;->wtn(Ljava/io/PrintWriter;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_10
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_17

    :catch_e
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :pswitch_12
    :try_start_1e
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/rtg;->obl(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_10
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_17

    :catch_f
    move-exception v0

    move-object v1, v0

    goto/16 :goto_14

    :pswitch_13
    :try_start_1f
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    :goto_16
    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/rtg;->oxb(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_17

    :pswitch_14
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/rtg;->ear(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_17

    :pswitch_15
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/rtg;->hmo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_17

    :pswitch_16
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    goto :goto_16

    :pswitch_17
    iget-object v3, v1, Lcom/android/server/engineer/rtg;->sis:Ljava/io/PrintWriter;

    invoke-direct {v1, v2, v3}, Lcom/android/server/engineer/rtg;->cjf(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_10
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_18

    :catch_10
    move-exception v0

    move-object v1, v0

    :try_start_20
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    :cond_28
    :goto_17
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    return v1

    :goto_18
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x7c7ee80e -> :sswitch_40
        -0x79f812da -> :sswitch_3f
        -0x779f4d3f -> :sswitch_3e
        -0x7430403c -> :sswitch_3d
        -0x6f6b949c -> :sswitch_3c
        -0x6bc999a6 -> :sswitch_3b
        -0x6a482e0b -> :sswitch_3a
        -0x69f0f8ba -> :sswitch_39
        -0x65299362 -> :sswitch_38
        -0x60f7be46 -> :sswitch_37
        -0x60415fa5 -> :sswitch_36
        -0x60361868 -> :sswitch_35
        -0x5c039fa6 -> :sswitch_34
        -0x545a992e -> :sswitch_33
        -0x41a803ed -> :sswitch_32
        -0x401e878e -> :sswitch_31
        -0x3d93faf0 -> :sswitch_30
        -0x3afc672a -> :sswitch_2f
        -0x33fb9777 -> :sswitch_2e
        -0x3397a030 -> :sswitch_2d
        -0x2a7530aa -> :sswitch_2c
        -0x28c3f196 -> :sswitch_2b
        -0x226aaa21 -> :sswitch_2a
        -0x20dab99e -> :sswitch_29
        -0x194d63e8 -> :sswitch_28
        -0x17160e05 -> :sswitch_27
        -0x1290a56d -> :sswitch_26
        -0x10075aa1 -> :sswitch_25
        -0xde8b811 -> :sswitch_24
        -0xc9159d0 -> :sswitch_23
        -0x862ee63 -> :sswitch_22
        -0x71598f3 -> :sswitch_21
        -0x5815fca -> :sswitch_20
        -0x1cd6367 -> :sswitch_1f
        -0x4d2d5c -> :sswitch_1e
        0xb7c6 -> :sswitch_1d
        0x15f0f5 -> :sswitch_1c
        0x160409 -> :sswitch_1b
        0x161b7c -> :sswitch_1a
        0x1dbb813 -> :sswitch_19
        0x7ff1006 -> :sswitch_18
        0x816af5d -> :sswitch_17
        0xf240492 -> :sswitch_16
        0x194b0174 -> :sswitch_15
        0x1f170223 -> :sswitch_14
        0x1fb407c9 -> :sswitch_13
        0x25704998 -> :sswitch_12
        0x26942d4b -> :sswitch_11
        0x2fd2c31d -> :sswitch_10
        0x35c1b0e0 -> :sswitch_f
        0x40ec43c5 -> :sswitch_e
        0x4110485b -> :sswitch_d
        0x4332eca7 -> :sswitch_c
        0x45553c24 -> :sswitch_b
        0x55700ba8 -> :sswitch_a
        0x57ace341 -> :sswitch_9
        0x599331eb -> :sswitch_8
        0x643ca528 -> :sswitch_7
        0x648bd7ea -> :sswitch_6
        0x6a8d7408 -> :sswitch_5
        0x70914a99 -> :sswitch_4
        0x75496b82 -> :sswitch_3
        0x7c600d5b -> :sswitch_2
        0x7cfd4063 -> :sswitch_1
        0x7dc2e617 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onHelp()V
    .locals 0

    return-void
.end method
