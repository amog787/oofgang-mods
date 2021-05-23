.class public Lcom/android/server/zgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOpAlarmAlignment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/zgw$you;,
        Lcom/android/server/zgw$sis;
    }
.end annotation


# static fields
.field private static bvj:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static dma:Z = false

.field private static final gck:Z

.field private static gwm:Ljava/lang/Object; = null

.field private static ibl:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static oif:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final qbh:Ljava/lang/String; = "ProcessManagement"

.field private static final wtn:Z = false

.field static final ywr:Ljava/lang/String; = "OpAlarmAlignment"


# instance fields
.field private bio:Landroid/util/ArrayMap;
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

.field private cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final igw:Ljava/lang/Object;

.field private kth:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:J

.field private sis:Lcom/android/server/zgw$you;

.field private ssp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tsu:Lcom/android/server/zgw$sis;

.field private you:Landroid/content/Context;

.field private zta:Lcom/android/server/AlarmManagerService$AmsInner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/zgw;->gck:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/zgw;->dma:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/zgw;->oif:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/zgw;->bvj:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/zgw;->ibl:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/zgw;->gwm:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    new-instance v0, Lcom/android/server/zgw$sis;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/zgw$sis;-><init>(Lcom/android/server/zgw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/zgw;->tsu:Lcom/android/server/zgw$sis;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->kth:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->igw:Ljava/lang/Object;

    return-void
.end method

.method private igw()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/zgw;)Lcom/android/server/AlarmManagerService$AmsInner;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    return-object p0
.end method

.method private ssp(Lcom/android/server/AlarmManagerService$Alarm;JJ)Z
    .locals 5

    iget-object p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 p5, 0x0

    if-eqz p4, :cond_8

    iget-object p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/zgw;->gwm:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/zgw;->oif:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/zgw;->rtg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p2, p3}, Lcom/android/server/zgw;->cno(J)J

    move-result-wide p2

    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/zgw;->igw()J

    move-result-wide v3

    add-long/2addr v3, p2

    goto :goto_2

    :cond_2
    move-wide v3, p2

    :goto_2
    iput-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iget-object p2, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    iget-object p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-virtual {p2, p3, v1}, Lcom/android/server/AlarmManagerService$AmsInner;->removeLockedInner(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    iget-object p2, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-virtual {p2, p1, p5, v2}, Lcom/android/server/AlarmManagerService$AmsInner;->setImplLockedInner(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    sget-boolean p2, Lcom/android/server/zgw;->gck:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delay third part wakeup alarm =  operation ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpAlarmAlignment"

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p2, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/zgw;->igw:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iget-object p3, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-nez p1, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    invoke-virtual {p0, p4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_5
    iget-object p2, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    invoke-virtual {p2, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    iget-object p2, p0, Lcom/android/server/zgw;->igw:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iget-object p3, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object p0, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_7
    :goto_3
    return p5

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_8
    return p5
.end method

.method static synthetic tsu()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/zgw;->dma:Z

    return v0
.end method

.method static synthetic you(Lcom/android/server/zgw;)Lcom/android/server/zgw$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    return-object p0
.end method

.method private ywr(Ljava/lang/String;ZI)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/server/zgw;->gwm:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object p0, Lcom/android/server/zgw;->oif:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/zgw;->oif:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/zgw;->bvj:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/android/server/zgw;->bvj:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-virtual {p3}, Lcom/android/server/AlarmManagerService$AmsInner;->getAlarmHandler()Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/16 p3, 0x15

    iput p3, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$AmsInner;->getAlarmHandler()Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessage(Landroid/os/Message;)Z

    sget-object p0, Lcom/android/server/zgw;->gwm:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget-object p2, Lcom/android/server/zgw;->oif:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/android/server/zgw;->bvj:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/zgw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->you:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bio(Z)Z
    .locals 0

    sget-boolean p0, Lcom/android/server/zgw;->dma:Z

    sput-boolean p1, Lcom/android/server/zgw;->dma:Z

    return p0
.end method

.method cno(J)J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/zgw;->rtg:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x927c0

    div-long/2addr p1, v0

    long-to-int p1, p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iget-wide p0, p0, Lcom/android/server/zgw;->rtg:J

    mul-int/lit8 p2, p2, 0xa

    mul-int/lit8 p2, p2, 0x3c

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr p0, v0

    return-wide p0
.end method

.method public deliverDelayAlarm(Landroid/os/Message;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/zgw;->igw:Ljava/lang/Object;

    monitor-enter v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "OpAlarmAlignment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " deliverAlarmsLocked  operation ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/server/AlarmManagerService$AmsInner;->deliverAlarmsLockedInner(Ljava/util/ArrayList;J)V

    iget-object v0, p0, Lcom/android/server/zgw;->igw:Ljava/lang/Object;

    monitor-enter v0

    move v1, v4

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/zgw;->ssp:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    :goto_2
    iget-object v1, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/zgw;->bio:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move v2, v4

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/zgw;->kth:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public dma(Z)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1, v0}, Lcom/android/server/zgw$you;->gck(Z)Z

    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1, v0}, Lcom/android/server/zgw$you;->sis(Z)Z

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    const-wide/32 v0, 0x1b7740

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1, v3}, Lcom/android/server/zgw$you;->gck(Z)Z

    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1, v3}, Lcom/android/server/zgw$you;->sis(Z)Z

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/zgw$you;->vdb(J)J

    :cond_1
    return-void
.end method

.method public gck(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/zgw$you;->oif(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initAlarmAlignment(II)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4d

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/server/zgw;->you:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "doze_mode_policy"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1, v0}, Lcom/android/server/zgw$you;->wtn(Z)Z

    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1}, Lcom/android/server/zgw$you;->ywr()V

    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1}, Lcom/android/server/zgw$you;->qbh()V

    iget-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p1}, Lcom/android/server/zgw$you;->bvj()V

    iget-object p0, p0, Lcom/android/server/zgw;->tsu:Lcom/android/server/zgw$sis;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public initInstance(Lcom/android/server/AlarmManagerService$AmsInner;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    iput-object p2, p0, Lcom/android/server/zgw;->you:Landroid/content/Context;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 p2, 0x0

    const/16 v0, 0x4d

    aput v0, p1, p2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/zgw$you;

    iget-object p2, p0, Lcom/android/server/zgw;->you:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$AmsInner;->getAlarmHandler()Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/zgw;->tsu:Lcom/android/server/zgw$sis;

    invoke-direct {p1, p0, p2, v0, v1}, Lcom/android/server/zgw$you;-><init>(Lcom/android/server/zgw;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    :cond_0
    return-void
.end method

.method public kth(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/zgw$you;->wtn(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public rtg(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "sending operation black alarm "

    const-string v1, "OpAlarmAlignment"

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    const-string v3, "AlarmTaskSchedule"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.igexin.sdk.action"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "AlarmTaskScheduleBak"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "cn.jpush.android.service.AlarmReceiver"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.q.m.QS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "intent.action.COCKROACH"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    sget-boolean p0, Lcom/android/server/zgw;->gck:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/zgw;->wtn(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/zgw;->gck:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2
.end method

.method public setAlarmAlignment(Lcom/android/server/AlarmManagerService$Alarm;Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;JJ)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x4d

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/server/zgw$zta;->zta:[I

    invoke-virtual {p2}, Lcom/android/server/AlarmManagerService$AlarmAlignmentReason;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v0, :cond_9

    const/4 v2, 0x2

    if-eq p2, v2, :cond_7

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/zgw;->ssp(Lcom/android/server/AlarmManagerService$Alarm;JJ)Z

    move-result v1

    goto/16 :goto_3

    :cond_2
    iget-object p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/server/zgw;->cno:Ljava/util/ArrayList;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    sget-boolean p2, Lcom/android/server/zgw;->gck:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " cancel setImplLocked  beause of screenOffAdjust tag ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpAlarmAlignment"

    invoke-static {p3, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/android/server/zgw;->cno(J)J

    move-result-wide p2

    iget p0, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-eq p0, v0, :cond_4

    if-nez p0, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr p4, v1

    add-long/2addr p4, p2

    goto :goto_0

    :cond_6
    move-wide p4, p2

    :goto_0
    iput-wide p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_2

    :cond_7
    iget-object p2, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p2, p1, v1}, Lcom/android/server/zgw$you;->cno(Lcom/android/server/AlarmManagerService$Alarm;Z)J

    move-result-wide p2

    iget-wide p4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    cmp-long p4, p4, p2

    if-eqz p4, :cond_a

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p2, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    iget-wide p3, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget p5, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-virtual {p2, p3, p4, p5}, Lcom/android/server/AlarmManagerService$AmsInner;->convertToElapsedInner(JI)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-lez p4, :cond_8

    add-long/2addr v4, p2

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/android/server/zgw;->zta:Lcom/android/server/AlarmManagerService$AmsInner;

    iget-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AlarmManagerService$AmsInner;->getMaxTriggerTime(JJJ)J

    move-result-wide v4

    :goto_1
    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iget-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/zgw$you;->cno(Lcom/android/server/AlarmManagerService$Alarm;Z)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    :cond_a
    :goto_2
    move v1, v0

    :cond_b
    :goto_3
    return v1
.end method

.method public setBlackAlarm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object p0, Lcom/android/server/zgw;->ibl:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lcom/android/server/zgw;->ibl:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mBlackAlarmOperation = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/zgw;->ibl:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAlarmAlignment"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlockAlarmUid(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/zgw;->ywr(Ljava/lang/String;ZI)V

    return-void
.end method

.method public shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_5

    aget-object v2, p2, v1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const-string v4, "-align"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/zgw;->gck:Z

    if-eqz v2, :cond_0

    array-length v0, p2

    if-ge v1, v0, :cond_3

    :try_start_0
    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long p2, v0, v4

    if-gez p2, :cond_2

    const-string p2, "Alarm align window must be larger than 0 !"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/zgw$you;->ugm(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Number format is wrong!"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/zgw$you;->kth(Ljava/io/PrintWriter;)V

    :cond_4
    :goto_0
    return v3

    :cond_5
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_a

    aget-object v2, p2, v1

    add-int/2addr v1, v3

    array-length v4, p2

    if-ge v1, v4, :cond_a

    const-string v4, "onlineconfig"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/server/zgw;->gck:Z

    if-eqz v2, :cond_a

    aget-object v2, p2, v1

    const-string v4, "on"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v3}, Lcom/android/server/zgw$you;->gwm(Z)V

    :cond_6
    const-string p0, "OnlineConfig is turned on."

    goto :goto_2

    :cond_7
    aget-object p2, p2, v1

    const-string v1, "off"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Lcom/android/server/zgw$you;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v0}, Lcom/android/server/zgw$you;->gwm(Z)V

    :cond_8
    const-string p0, "OnlineConfig is turned off."

    goto :goto_2

    :cond_9
    const-string p0, "Please enter on or off."

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "For example, \'adb shell dumpsys alarm onlineconifg off\'."

    :goto_2
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_a
    return v0
.end method

.method public updateInteractiveStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->rtg:J

    return-void
.end method

.method wtn(Ljava/lang/String;)Z
    .locals 1

    sget-object p0, Lcom/android/server/zgw;->ibl:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
