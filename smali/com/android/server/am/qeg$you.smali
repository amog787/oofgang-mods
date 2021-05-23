.class public Lcom/android/server/am/qeg$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/qeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# static fields
.field static bio:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cno:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static igw:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static kth:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static rtg:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sis:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ssp:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static tsu:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static you:Lcom/android/server/am/qeg$you; = null

.field public static final zta:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "HEARTBEAT"

    const-string v2, "HEART_BEAT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/qeg$you;->rtg:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "AlarmTaskSchedule"

    const-string v2, "com.igexin.sdk.action"

    const-string v3, "AlarmTaskScheduleBak"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/qeg$you;->ssp:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const-string v2, "android.intent.action.TIME_TICK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/qeg$you;->cno:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg$you;->igw:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "cn.kuwo.player"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/qeg$you;->igw:Landroid/util/ArrayMap;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/am/qeg$you;->tsu()V

    return-void
.end method

.method static final bio(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "skipBroadcastLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/qeg$you;->sis()Lcom/android/server/am/qeg$you;

    move-result-object v2

    iget-boolean v3, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/am/qeg$you;->igw(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/am/qeg;->zta()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFP skip broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sender "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is ordered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "OpBroadcastSkipStrategy"

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0
.end method

.method private cno(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBlackAlarm list.size="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpBroadcastSkipStrategy"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/OpAlarmAlignmentInjector;->setBlackAlarm(Ljava/util/List;)V

    return-void
.end method

.method public static dma(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static gck(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private igw(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 7

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    :cond_0
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_1

    return p3

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    return p3

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_3

    return p3

    :cond_3
    invoke-static {p1}, Lcom/android/server/am/qeg;->sis(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p3

    :cond_4
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_c

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/server/am/qeg$you;->wtn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    sget-object v4, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result p0

    if-le p0, v2, :cond_8

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result p0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq p0, v1, :cond_8

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusUtil$you;->cno(I)Z

    move-result p0

    if-nez p0, :cond_8

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_7

    const-string p0, "OpBroadcastSkipStrategy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "skip Broadcast: r="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    monitor-exit v4

    return v3

    :cond_8
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result p0

    if-ne p0, v2, :cond_a

    sget-object p0, Lcom/android/server/am/qeg$you;->cno:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result p0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq p0, v1, :cond_a

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1}, Lcom/android/server/OnePlusUtil$you;->cno(I)Z

    move-result p0

    if-nez p0, :cond_a

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_9

    const-string p0, "OpBroadcastSkipStrategy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skip Broadcast: r="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " ;broadcastAction="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v4

    return v3

    :cond_a
    monitor-exit v4

    return p3

    :cond_b
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_c
    :goto_0
    invoke-static {}, Lcom/android/server/am/qeg;->you()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v0, :cond_10

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Lcom/android/server/am/OpBGFrozenInjector;->isUidFrozen(I)Z

    move-result v4

    if-eqz v4, :cond_10

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result v4

    if-le v4, v2, :cond_e

    sget-object v2, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBlackActionListForFrozen skip Broadcast for mBlackActionListForFrozen: a="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " r="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBroadcastSkipStrategy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v3

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/am/qeg$you;->you(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mBlackActionListForFrozen skip Broadcast for containsBlackPartOfActionStrict: a="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " r="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBroadcastSkipStrategy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v3

    :cond_10
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-lt v2, v1, :cond_14

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-lt v2, v1, :cond_14

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v1, v2, :cond_14

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusUtil$you;->cno(I)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0, v0}, Lcom/android/server/am/qeg$you;->zta(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "skip Broadcast: a="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " r="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBroadcastSkipStrategy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return v3

    :cond_12
    sget-object p0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-boolean p0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz p0, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "skip Broadcast mBlackAlarmActionList: a="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " r="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; app="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBroadcastSkipStrategy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v3

    :cond_14
    return p3
.end method

.method static final kth(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastRecord;Z)Z
    .locals 4

    const-wide/16 v0, 0x8

    const-string v2, "skipBroadcastLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/qeg$you;->sis()Lcom/android/server/am/qeg$you;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/am/qeg$you;->igw(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/am/qeg;->zta()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BFP Denial: receiving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v3, v3, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v3, v3, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget p0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") due to sender "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (uid "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") is ordered "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p1, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ;  ordered "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpBroadcastSkipStrategy"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return p0
.end method

.method private static rtg()V
    .locals 4

    sget-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "wns.heartbeat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "agoo_action_heart"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "agoo_action_re_connect"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "com.xiaomi.push.PING_TIMER"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "com.netease.pushservice.core.PushLMessageService_V2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "com.sina.heartbeat.action.1004"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "com.sohu.push.action.HEARTBEAT_WAKEUP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    const-string v1, "com.sohu.push.action.HEARTBEAT"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static sis()Lcom/android/server/am/qeg$you;
    .locals 1

    sget-object v0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/qeg$you;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/qeg$you;

    invoke-direct {v0}, Lcom/android/server/am/qeg$you;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/qeg$you;

    :cond_0
    sget-object v0, Lcom/android/server/am/qeg$you;->you:Lcom/android/server/am/qeg$you;

    return-object v0
.end method

.method public static ssp()V
    .locals 3

    invoke-static {}, Lcom/android/server/am/qeg$you;->rtg()V

    sget-boolean v0, Lcom/android/server/am/qeg;->rtg:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadConfigFiles: mActionListToSkipStartProcess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/qeg$you;->tsu:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBroadcastSkipStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfigFiles: mActionListToSkipThawed= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/qeg$you;->sis:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadConfigFiles: mBlackAlarmActionList= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/qeg$you;->sis()Lcom/android/server/am/qeg$you;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/am/qeg$you;->cno(Ljava/util/List;)V

    return-void
.end method

.method private tsu()V
    .locals 1

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private wtn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Lcom/android/server/am/qeg$you;->igw:Landroid/util/ArrayMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/qeg$you;->igw:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private you(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/android/server/am/qeg$you;->rtg:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/qeg$you;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static ywr(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/qeg$you;->sis()Lcom/android/server/am/qeg$you;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/qeg$you;->kth:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/am/qeg$you;->cno(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private zta(Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/android/server/am/qeg$you;->ssp:Ljava/util/ArrayList;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/qeg$you;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
