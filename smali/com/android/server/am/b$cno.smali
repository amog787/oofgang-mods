.class Lcom/android/server/am/b$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field final synthetic cno:Lcom/android/server/am/b;

.field rtg:Ljava/lang/String;

.field sis:I

.field ssp:J

.field tsu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field you:Ljava/lang/String;

.field zta:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/b;Lcom/android/server/am/ugm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/b$cno;->cno:Lcom/android/server/am/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/b$cno;->zta:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/b$cno;->you:Ljava/lang/String;

    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/am/b$cno;->sis:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/b$cno;->tsu:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/am/b$cno;->rtg:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/b$cno;->ssp:J

    invoke-virtual {p2}, Lcom/android/server/am/ugm;->tsu()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/b$cno;->zta:I

    invoke-virtual {p2}, Lcom/android/server/am/ugm;->sis()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/b$cno;->you:Ljava/lang/String;

    iget p1, p0, Lcom/android/server/am/b$cno;->zta:I

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/b$cno;->sis:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/b;Lcom/android/server/am/ugm;Lcom/android/server/am/b$zta;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/b$cno;-><init>(Lcom/android/server/am/b;Lcom/android/server/am/ugm;)V

    return-void
.end method

.method private bio()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/b$cno;->ssp:J

    return-wide v0
.end method

.method static synthetic cno(Lcom/android/server/am/b$cno;Lcom/android/server/am/ugm;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/b$cno;->wtn(Lcom/android/server/am/ugm;)Z

    move-result p0

    return p0
.end method

.method private dma()V
    .locals 2

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/b$cno;->rtg:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/am/b$cno;->ssp:J

    return-void
.end method

.method private gck(Lcom/android/server/am/ugm;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ugm;->rtg()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/b$cno;->tsu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/b$cno;->tsu:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/am/b;->sis()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    return v0
.end method

.method private igw()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/b$cno;->sis:I

    return p0
.end method

.method private kth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/b$cno;->rtg:Ljava/lang/String;

    return-object p0
.end method

.method private qbh()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/b$cno;->dma()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/b$cno;->tsu:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    iget-wide v5, p0, Lcom/android/server/am/b$cno;->ssp:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_0

    iput-wide v3, p0, Lcom/android/server/am/b$cno;->ssp:J

    iput-object v2, p0, Lcom/android/server/am/b$cno;->rtg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/b$cno;->tsu:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic rtg(Lcom/android/server/am/b$cno;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/b$cno;->igw()I

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/b$cno;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/b$cno;->kth()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/am/b$cno;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/b$cno;->ywr(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/b$cno;Lcom/android/server/am/ugm;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/b$cno;->gck(Lcom/android/server/am/ugm;)Z

    move-result p0

    return p0
.end method

.method private wtn(Lcom/android/server/am/ugm;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ugm;->rtg()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/b$cno;->tsu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/lqr;->h(Ljava/lang/String;)V

    return v0
.end method

.method static synthetic you(Lcom/android/server/am/b$cno;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/b$cno;->bio()J

    move-result-wide v0

    return-wide v0
.end method

.method private ywr(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/b$cno;->sis:I

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/b$cno;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/b$cno;->qbh()V

    return-void
.end method
