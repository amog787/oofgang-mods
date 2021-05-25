.class Lcom/android/server/am/obl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/obl$you;
    }
.end annotation


# static fields
.field private static final bud:Ljava/lang/String; = "delay_off"

.field private static final bvj:Ljava/lang/String; = "fgsystem"

.field private static final cgv:Ljava/lang/String; = "accelerate_off"

.field private static final cjf:Ljava/lang/String; = "default_on"

.field private static final ear:Ljava/lang/String; = "default_off"

.field private static final fto:Ljava/lang/String; = "priority_on"

.field private static final gwm:Ljava/lang/String; = "fgthird"

.field private static final hmo:Ljava/lang/String; = "skip_off"

.field private static final ibl:Ljava/lang/String; = "bgsystem"

.field private static final ire:Ljava/lang/String; = "skip_on"

.field private static final irq:Ljava/lang/String; = "delay_start_off"

.field private static final ivd:Ljava/lang/String; = "broadcast_info"

.field private static final les:Ljava/lang/String; = "delay_start_on"

.field private static final lqr:Ljava/lang/String; = "priority_off"

.field private static final obl:Ljava/lang/String; = "help"

.field private static final oif:Ljava/lang/String; = "bghighused"

.field private static final oxb:Ljava/lang/String; = "to_file"

.field private static final qbh:Ljava/lang/String; = "fghighused"

.field private static final qeg:Ljava/lang/String; = "reset_systemapp"

.field private static final ugm:Ljava/lang/String; = "bgthird"

.field private static final vdb:Ljava/lang/String; = "debug_on"

.field private static final vdw:Ljava/lang/String; = "set_systemapp"

.field private static final veq:Ljava/lang/String; = "accelerate_on"

.field private static final vju:Ljava/lang/String; = "delay_on"

.field private static final ywr:Ljava/lang/String; = "OPIntelligentBroadcastManager"

.field private static final zgw:Ljava/lang/String; = "debug_off"


# instance fields
.field private bio:Lcom/android/server/am/BroadcastQueue;

.field private cno:Lcom/android/server/am/BroadcastQueue;

.field dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

.field gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field private igw:Ljava/lang/String;

.field private kth:Lcom/android/server/am/BroadcastQueue;

.field private rtg:Lcom/android/server/am/BroadcastQueue;

.field private sis:Landroid/content/Context;

.field private ssp:Lcom/android/server/am/BroadcastQueue;

.field private tsu:Lcom/android/server/am/BroadcastQueue;

.field private wtn:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Landroid/os/Handler;

.field private zta:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/android/server/am/obl;->igw:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iput-object v0, p0, Lcom/android/server/am/obl;->gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    sget-object v0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->rtg:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    iput-object v0, p0, Lcom/android/server/am/obl;->dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/obl$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/obl;-><init>()V

    return-void
.end method

.method public static cno()Lcom/android/server/am/obl;
    .locals 1

    invoke-static {}, Lcom/android/server/am/obl$you;->zta()Lcom/android/server/am/obl;

    move-result-object v0

    return-object v0
.end method

.method private igw(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 9

    const-string v0, "OPIntelligentBroadcastManager"

    const-string v1, "OPIntelligentBroadcastManager initQueue"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/BroadcastConstants;

    const-string v1, "bcast_fg_constants"

    invoke-direct {v0, v1}, Lcom/android/server/am/BroadcastConstants;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x2710

    iput-wide v1, v0, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    new-instance v1, Lcom/android/server/am/BroadcastConstants;

    const-string v2, "bcast_bg_constants"

    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastConstants;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, 0xea60

    iput-wide v2, v1, Lcom/android/server/am/BroadcastConstants;->TIMEOUT:J

    new-instance v8, Lcom/android/server/am/BroadcastQueue;

    const-string v5, "fghighused"

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V

    iput-object v8, p0, Lcom/android/server/am/obl;->tsu:Lcom/android/server/am/BroadcastQueue;

    new-instance v2, Lcom/android/server/am/BroadcastQueue;

    const-string v6, "bghighused"

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V

    iput-object v2, p0, Lcom/android/server/am/obl;->rtg:Lcom/android/server/am/BroadcastQueue;

    new-instance v8, Lcom/android/server/am/BroadcastQueue;

    const-string v5, "fgsystem"

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V

    iput-object v8, p0, Lcom/android/server/am/obl;->ssp:Lcom/android/server/am/BroadcastQueue;

    new-instance v2, Lcom/android/server/am/BroadcastQueue;

    const-string v6, "bgsystem"

    const/4 v8, 0x0

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V

    iput-object v2, p0, Lcom/android/server/am/obl;->cno:Lcom/android/server/am/BroadcastQueue;

    new-instance v8, Lcom/android/server/am/BroadcastQueue;

    const-string v5, "fgthird"

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V

    iput-object v8, p0, Lcom/android/server/am/obl;->kth:Lcom/android/server/am/BroadcastQueue;

    new-instance v0, Lcom/android/server/am/BroadcastQueue;

    const-string v6, "bgthird"

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/BroadcastQueue;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/am/BroadcastConstants;Z)V

    iput-object v0, p0, Lcom/android/server/am/obl;->bio:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/am/obl;->tsu:Lcom/android/server/am/BroadcastQueue;

    aput-object v3, v1, v2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/am/obl;->rtg:Lcom/android/server/am/BroadcastQueue;

    aput-object v3, v1, v2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/server/am/obl;->ssp:Lcom/android/server/am/BroadcastQueue;

    aput-object v3, v1, v2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/server/am/obl;->cno:Lcom/android/server/am/BroadcastQueue;

    aput-object v3, v1, v2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/server/am/obl;->kth:Lcom/android/server/am/BroadcastQueue;

    aput-object v3, v1, v2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    const/16 v2, 0x8

    iget-object p0, p0, Lcom/android/server/am/obl;->bio:Lcom/android/server/am/BroadcastQueue;

    aput-object p0, v1, v2

    sget-boolean p0, Lcom/android/server/am/oxb;->gck:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/qeg;->tsu()Lcom/android/server/am/qeg;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/qeg;->cno(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static kth(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "============================vipbroadcast commands help:============================\n\t1. You can input these command to get all command:\n\t\tdumpsys activity vipbroadcast-help\n\n\t2. You can open debug switch on by this command:\n\t\tdumpsys activity vipbroadcast-debug_on\n\n\t3. You can close debug switch off by this command:\n\t\tdumpsys activity vipbroadcast-debug_off\n\n\t4. You can save broacastdata to file by this command:\n\t\tdumpsys activity vipbroadcast-to_file\n\n\t5. You can enable default strategy by this command:\n\t\tdumpsys activity vipbroadcast-default_on\n\n\t6. You can disable default strategy by this command:\n\t\tdumpsys activity vipbroadcast-default_off\n\n\t7. You can enable priority strategy by this command:\n\t\tdumpsys activity vipbroadcast-priority_on\n\n\t8. You can disable priority strategy by this command:\n\t\tdumpsys activity vipbroadcast-priority_off\n\n\t9. You can enable delay strategy by this command:\n\t\tdumpsys activity vipbroadcast-delay_on\n\n\t10. You can disable delay strategy by this command:\n\t\tdumpsys activity vipbroadcast-delay_off\n\n\t11. You can enable delay start strategy by this command:\n\t\tdumpsys activity vipbroadcast-delay_start_on\n\n\t12. You can disable delay start strategy by this command:\n\t\tdumpsys activity vipbroadcast-delay_start_off\n\n\t13. You can enable setsystemapp by this command:\n\t\tdumpsys activity vipbroadcast-set_systemapp\n\n\t14. You can disable setsystemapp by this command:\n\t\tdumpsys activity vipbroadcast-reset_systemapp\n\n\t15. You get broadcast info by this command:\n\t\tdumpsys activity vipbroadcast-broadcast_info\n\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static obl(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->cjf()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/a$you;->bio(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z

    move-result v0

    const-string p0, "OPIntelligentBroadcastManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "skipBroadcastLocked1 isSkip = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method

.method private tsu(Ljava/io/PrintWriter;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    const-string v1, "BroadcastRecord in Queue"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mQueueName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mQueueName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v6, v6, v2

    iget-object v6, v6, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " r = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sEnableFeature  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sEnableSkipStrategy  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->cjf()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sEnableDelayStrategy  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->zgw()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sEnableDefaultStrategy  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->ugm()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sEnablePriorityStrategy  = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->oxb()Z

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static vdb()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->ugm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPIntelligentBroadcastManager"

    const-string v1, "restToDefault"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/irq;->sis()Lcom/android/server/am/irq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/irq;->tsu()V

    :cond_0
    return-void
.end method

.method private wtn(I)Z
    .locals 0

    const/high16 p0, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static zgw(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/oxb;->wtn:Z

    if-eqz v1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/a$you;->kth(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v0

    const-string p0, "OPIntelligentBroadcastManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "skipBroadcastLocked2 isSkip = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return v0
.end method


# virtual methods
.method public bio(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    const-string v0, "OPIntelligentBroadcastManager"

    const-string v1, "OPIntelligentBroadcastManager init"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/vdb;->you:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/obl;->you:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/obl;->igw(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    sget-boolean p0, Lcom/android/server/am/oxb;->wtn:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/a;->tsu()Lcom/android/server/am/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/a;->rtg(Lcom/android/server/am/ActivityManagerService;)V

    :cond_0
    invoke-static {}, Lcom/android/server/am/g;->zta()Lcom/android/server/am/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/g;->you()V

    return-void
.end method

.method public bvj(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->zgw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteSpeedChanged curspeedType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLastSpeedType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/obl;->dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPIntelligentBroadcastManager"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/obl;->dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-static {}, Lcom/android/server/am/qeg;->tsu()Lcom/android/server/am/qeg;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/obl;->gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iget-object p0, p0, Lcom/android/server/am/obl;->dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/server/am/qeg;->wtn(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;Z)V

    :cond_0
    return-void
.end method

.method cjf(ZLandroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/obl;->gck(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->addQueueFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->removeQueueFlags(I)V

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    const/16 p1, 0x10

    :goto_1
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->addQueueFlags(I)V

    iget-object p1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/obl;->ywr(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->addQueueFlags(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->removeQueueFlags(I)V

    :goto_2
    return-void
.end method

.method public dma(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public gck(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public gwm(Lcom/android/server/am/BroadcastRecord;I)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processOrderedBroadcastForPriorityLocked isEnablePriorityStrategy  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->oxb()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPIntelligentBroadcastManager"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->sis()Lcom/android/server/am/ivd;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/ivd;->rtg(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    return-void
.end method

.method public ibl(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->zgw()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteSystemLoadChanged curloadType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mLastLoadType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/obl;->gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPIntelligentBroadcastManager"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/obl;->gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-static {}, Lcom/android/server/am/qeg;->tsu()Lcom/android/server/am/qeg;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/obl;->gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iget-object p0, p0, Lcom/android/server/am/obl;->dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Lcom/android/server/am/qeg;->wtn(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;Z)V

    :cond_0
    return-void
.end method

.method public oif(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/obl;->wtn:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public oxb(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OPIntelligentBroadcastManager"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/obl;->sis:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/am/oxb;->ear()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/zgw;->igw()Lcom/android/server/am/zgw;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/obl;->sis:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/server/am/zgw;->ywr(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/server/am/oxb;->igw()Lcom/android/server/am/oxb;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->bvj(Landroid/content/Context;)V

    return-void
.end method

.method public qbh(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/obl;->igw:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    const-string v1, "OPIntelligentBroadcastManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteFrontPackageChanged packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " lpackageName = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " luid = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " lpid = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "SCREEN OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "OPIntelligentBroadcastManager"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "noteFrontPackageChanged current frontpackage is screen off,we will no need to change front app,   front app is lpackageName "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/obl;->igw:Ljava/lang/String;

    if-eq p2, p1, :cond_1

    iput-object p1, p0, Lcom/android/server/am/obl;->igw:Ljava/lang/String;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/am/oxb;->zgw()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/qeg;->tsu()Lcom/android/server/am/qeg;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p2, p0}, Lcom/android/server/am/qeg;->dma(Lcom/android/server/am/ActivityManagerService;)V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public rtg(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/oxb;->kth:Z

    const-string v2, "debug_off"

    const-string v3, "debug_on"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_1

    array-length v1, v0

    if-lt v1, v4, :cond_0

    aget-object v1, v0, v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v5

    :goto_1
    if-eqz v1, :cond_2

    const-string p0, "Bad command! You not in debug mode!"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    array-length v1, v0

    const-string v7, " Bad command: \""

    if-lt v1, v4, :cond_4

    aget-object v0, v0, v6

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v4, "skip_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x6

    goto/16 :goto_3

    :sswitch_1
    const-string v4, "skip_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x7

    goto/16 :goto_3

    :sswitch_2
    const-string v4, "delay_start_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xd

    goto/16 :goto_3

    :sswitch_3
    const-string v4, "delay_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v4, "default_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v5

    goto/16 :goto_3

    :sswitch_6
    const-string v4, "broadcast_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0x10

    goto/16 :goto_3

    :sswitch_7
    const-string v4, "priority_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :sswitch_8
    const-string v8, "help"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :sswitch_9
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v4, v6

    goto :goto_3

    :sswitch_a
    const-string v4, "priority_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0x9

    goto :goto_3

    :sswitch_b
    const-string v4, "default_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x5

    goto :goto_3

    :sswitch_c
    const-string v4, "delay_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xb

    goto :goto_3

    :sswitch_d
    const-string v4, "delay_start_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xc

    goto :goto_3

    :sswitch_e
    const-string v4, "to_file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x3

    goto :goto_3

    :sswitch_f
    const-string v4, "reset_systemapp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xf

    goto :goto_3

    :sswitch_10
    const-string v4, "set_systemapp"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v4, 0xe

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v1

    :goto_3
    packed-switch v4, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \" ! Please input \"dumpsys activity broadcast-help\" to get help !"

    goto/16 :goto_4

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/am/obl;->tsu(Ljava/io/PrintWriter;)V

    goto/16 :goto_6

    :pswitch_1
    sput-boolean v5, Lcom/android/server/am/oxb;->ear:Z

    const-string p0, "sSetSystemapp is false!"

    goto/16 :goto_5

    :pswitch_2
    sput-boolean v6, Lcom/android/server/am/oxb;->ear:Z

    const-string p0, "sSetSystemapp is true!"

    goto :goto_5

    :pswitch_3
    sput-boolean v5, Lcom/android/server/am/oxb;->dma:Z

    const-string p0, "sEnableDelayStartProcessStrategy is false!"

    goto :goto_5

    :pswitch_4
    sput-boolean v6, Lcom/android/server/am/oxb;->dma:Z

    const-string p0, "sEnableDelayStartProcessStrategy is true!"

    goto :goto_5

    :pswitch_5
    sput-boolean v5, Lcom/android/server/am/oxb;->gck:Z

    const-string p0, "sEnableDelayStrategy is false!"

    goto :goto_5

    :pswitch_6
    sput-boolean v6, Lcom/android/server/am/oxb;->gck:Z

    const-string p0, "sEnableDelayStrategy is true!"

    goto :goto_5

    :pswitch_7
    sput-boolean v5, Lcom/android/server/am/oxb;->qbh:Z

    const-string p0, "sEnablePriorityStrategy is false!"

    goto :goto_5

    :pswitch_8
    sput-boolean v6, Lcom/android/server/am/oxb;->qbh:Z

    const-string p0, "sEnablePriorityStrategy is true!"

    goto :goto_5

    :pswitch_9
    sput-boolean v5, Lcom/android/server/am/oxb;->wtn:Z

    const-string p0, "sEnableSkipStrategy is false!"

    goto :goto_5

    :pswitch_a
    sput-boolean v6, Lcom/android/server/am/oxb;->wtn:Z

    const-string p0, "sEnableSkipStrategy is true!"

    goto :goto_5

    :pswitch_b
    sput-boolean v5, Lcom/android/server/am/oxb;->ywr:Z

    invoke-static {}, Lcom/android/server/am/irq;->you()V

    const-string p0, "sEnableDefaultStrategy is false!"

    goto :goto_5

    :pswitch_c
    sput-boolean v6, Lcom/android/server/am/oxb;->ywr:Z

    invoke-static {}, Lcom/android/server/am/irq;->zta()V

    const-string p0, "sEnableDefaultStrategy is true!"

    goto :goto_5

    :pswitch_d
    invoke-static {}, Lcom/android/server/am/zgw;->igw()Lcom/android/server/am/zgw;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/zgw;->cno(Ljava/io/PrintWriter;)V

    goto :goto_6

    :pswitch_e
    invoke-static {p2}, Lcom/android/server/am/obl;->kth(Ljava/io/PrintWriter;)V

    goto :goto_6

    :pswitch_f
    invoke-static {p2, v2}, Lcom/android/server/am/Slogger;->switchOMMLog(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    :pswitch_10
    invoke-static {p2, v3}, Lcom/android/server/am/Slogger;->switchOMMLog(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \" ! Please input \"dumpsys activity brodcast-help\" to get help !"

    :goto_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6fdeb60b -> :sswitch_10
        -0x4fa8d95e -> :sswitch_f
        -0x44d88b40 -> :sswitch_e
        -0x3779c9e8 -> :sswitch_d
        -0x1bf0e34d -> :sswitch_c
        -0x1a06558f -> :sswitch_b
        -0x17281bac -> :sswitch_a
        -0xbcbee7d -> :sswitch_9
        0x30cf41 -> :sswitch_8
        0xfc4e65a -> :sswitch_7
        0x1c32856c -> :sswitch_6
        0x20a6d74b -> :sswitch_5
        0x2873689d -> :sswitch_4
        0x30a5a61b -> :sswitch_3
        0x48408c56 -> :sswitch_2
        0x7fe5eaaf -> :sswitch_1
        0x7fff289f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method sis(IZ)Lcom/android/server/am/BroadcastQueue;
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/am/obl;->tsu:Lcom/android/server/am/BroadcastQueue;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/obl;->rtg:Lcom/android/server/am/BroadcastQueue;

    goto :goto_0

    :cond_1
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/obl;->ssp:Lcom/android/server/am/BroadcastQueue;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/obl;->cno:Lcom/android/server/am/BroadcastQueue;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/am/obl;->kth:Lcom/android/server/am/BroadcastQueue;

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/obl;->bio:Lcom/android/server/am/BroadcastQueue;

    :goto_0
    return-object p0
.end method

.method public ssp(ZLcom/android/server/am/BroadcastRecord;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r.intent  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPIntelligentBroadcastManager"

    invoke-static {v3, v2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/server/am/oxb;->zgw()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/am/obl;->wtn(I)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_4

    iget-object v7, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    move-object v4, v7

    check-cast v4, Landroid/content/pm/ActivityInfo;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v6}, Lcom/android/server/am/obl;->dma(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    :goto_1
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    :cond_0
    instance-of v8, v7, Lcom/android/server/am/BroadcastFilter;

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/android/server/am/BroadcastFilter;

    iget-object v9, v8, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v9, v9, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v9, :cond_2

    iget-object v4, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v4}, Lcom/android/server/am/obl;->dma(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    iget-object v4, v8, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v4, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    :cond_1
    move-object v4, v7

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v6}, Lcom/android/server/am/obl;->dma(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_2
    :goto_2
    const/16 v8, 0x10

    if-eqz v4, :cond_3

    invoke-virtual {v0, v6, v4}, Lcom/android/server/am/obl;->cjf(ZLandroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getQueueFlags()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiver_i = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " nextReceiver = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " packageName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "      = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v8, v2}, Lcom/android/server/am/obl;->sis(IZ)Lcom/android/server/am/BroadcastQueue;

    move-result-object v8

    move-object v10, v8

    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v22, v9

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lcom/android/server/am/BroadcastRecord;

    move-object v9, v7

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v12, v1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v13, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v15, v1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move/from16 v16, v0

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    move/from16 v17, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move/from16 v20, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v23, v0

    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v24, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v26, v0

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move/from16 v27, v0

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v28, v0

    const/16 v29, 0x0

    iget v0, v1, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v30, v0

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v31, v0

    iget-boolean v0, v1, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move/from16 v32, v0

    invoke-direct/range {v9 .. v32}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/am/BroadcastRecord;->mHasSpilt:Z

    iget-object v0, v8, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public ugm()V
    .locals 4

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->zgw()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPIntelligentBroadcastManager"

    const-string v1, "processParallelBroadcastLocked"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/qeg;->tsu()Lcom/android/server/am/qeg;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/obl;->gck:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iget-object p0, p0, Lcom/android/server/am/obl;->dma:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/am/qeg;->wtn(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;Z)V

    :cond_0
    return-void
.end method

.method public you(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustReceiverListForSMS isEnablePriorityStrategy = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->oxb()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPIntelligentBroadcastManager"

    invoke-static {v0, p0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->sis()Lcom/android/server/am/ivd;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ivd;->zta(Ljava/util/List;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public ywr(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/obl;->igw:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/obl;->igw:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Lcom/android/server/am/BroadcastRecord;)V
    .locals 2

    invoke-static {}, Lcom/android/server/am/oxb;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/oxb;->vdb()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "OPIntelligentBroadcastManager"

    const-string v1, "adjustIfAppNotExist"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/vdw;->you()Lcom/android/server/am/vdw;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/obl;->zta:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/am/vdw;->zta(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;I)V

    :cond_0
    return-void
.end method
