.class Lcom/android/server/am/OnePlusBackgroundFrozen$sis;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r()Lcom/android/server/am/OnePlusBackgroundFrozen;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "OPBF"

    const-string p1, "# mDebugReceiver # onReceive # sInstance is null, return"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "OPBF"

    const-string p1, "# mDebugReceiver # onReceive # intent is null, return"

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# mDebugReceiver # onReceive # action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    const-string v0, ""

    :try_start_0
    const-string v2, "com.OPBF.action.debug"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_19

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    const-string p1, "dump"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_2
    const-string p1, "dumpAppsType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_3
    const-string p1, "dumpPidToUid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # dumpPidToUid # mPidToUidMap:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    monitor-exit p1

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_4
    const-string p1, "syncLogProp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "# dump # sLogDetail # "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->you()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "# dump # sLogDebug # "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->dma()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "# dump # sLogOneplus # "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ire(Z)Z

    const-string p0, "persist.sys.opbf.debug_log"

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh(Z)Z

    const-string p0, "persist.sys.opbf.debug_detail"

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->tsu(Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud()I

    goto/16 :goto_3

    :cond_5
    const-string p1, "setLogProp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p0, "level"

    invoke-virtual {p2, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# dump # setLogProp level # "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    if-lt p0, v1, :cond_1b

    const/4 p1, 0x4

    if-gt p0, p1, :cond_1b

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq(I)I

    const-string p1, "persist.sys.opbf.debug_loglevel"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string p1, "dumpCache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "uid"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "detail"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V

    goto/16 :goto_3

    :cond_7
    const-string p1, "dumpTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_8
    const-string p1, "dumpIsolatedUids"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->ivd(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_9
    const-string p1, "addWhiteList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-static {p0, p2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->c(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string p1, "addPacketList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "add"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p2, :cond_b

    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_2
    monitor-exit v1

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :cond_c
    const-string p1, "removeWhiteList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_d
    const-string p1, "switchOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_e
    const-string p1, "switchOff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_f
    const-string p1, "setFlag"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, "uid"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string p1, "f1"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    const-string p1, "f2"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    const-string p1, "f3"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static/range {v4 .. v11}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i(Lcom/android/server/am/OnePlusBackgroundFrozen;IJJJ)V

    goto/16 :goto_3

    :cond_10
    const-string p1, "dumpAllCache"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_11
    const-string p1, "dumpCacheReason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "uid"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    goto/16 :goto_3

    :cond_12
    const-string p1, "setHighPerfRestrict"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "uid"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "restrict"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, "debug"

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->l(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    const-string p1, "dumpAllFrozenHistory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    goto/16 :goto_3

    :cond_14
    const-string p1, "isPkgHoldNotification"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_15

    const-string p1, "pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "uid"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "fg"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "post"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, p1, v2, v3, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;IZZ)I

    goto/16 :goto_3

    :cond_15
    const-string p1, "trans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p0, "activity"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "callerPid"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "targetUid"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "rpcName"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "code"

    invoke-virtual {p2, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const p2, 0x86da

    invoke-interface {p0, p2, p1, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_3

    :catchall_2
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_16
    const-string p1, "NativeCheck"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "uid"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "OPBF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCheckedUid uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->you(I)I

    goto/16 :goto_3

    :cond_17
    const-string p1, "binderTest1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v1, "uid"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->q(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I

    const-string p1, "OPBF"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderTest1 mBinderTestUid:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p(Lcom/android/server/am/OnePlusBackgroundFrozen;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_18
    const-string p1, "binderTest2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "level"

    const/16 v1, 0xa

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    const-string p2, "com.example.applicationtestproject"

    invoke-virtual {p0, p2, v3, p1}, Lcom/android/server/am/ActivityManagerService;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    const-string p0, "OPBF"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binderTest2 level:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_19
    const-string v1, "com.OPBF.action.debug_freezeall"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string p1, "exceptPkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "force"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u(Z)Z

    invoke-static {v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->w(Z)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->x(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V

    goto :goto_3

    :cond_1a
    const-string v1, "com.OPBF.action.debug_thawedall"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-static {v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u(Z)Z

    const-string p1, "force"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->w(Z)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDebugReceiver code:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Exception e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBF"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_3
    return-void
.end method
