.class Lcom/android/server/ywr$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ywr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field private cno:Z

.field final synthetic kth:Lcom/android/server/ywr;

.field private rtg:J

.field private sis:J

.field private ssp:Z

.field private tsu:J

.field private you:Ljava/lang/String;

.field private zta:I


# direct methods
.method public constructor <init>(Lcom/android/server/ywr;ILjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/ywr$sis;->ssp:Z

    iput-boolean p1, p0, Lcom/android/server/ywr$sis;->cno:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ywr$sis;->sis:J

    iput p2, p0, Lcom/android/server/ywr$sis;->zta:I

    iput-object p3, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    return-void
.end method

.method static synthetic cno(Lcom/android/server/ywr$sis;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ywr$sis;->cno:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/ywr$sis;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ywr$sis;->ssp:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/ywr$sis;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ywr$sis;->rtg:J

    return-wide v0
.end method

.method static synthetic ssp(Lcom/android/server/ywr$sis;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/ywr$sis;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ywr$sis;->sis:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/ywr$sis;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/ywr$sis;->tsu:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/ywr$sis;)I
    .locals 0

    iget p0, p0, Lcom/android/server/ywr$sis;->zta:I

    return p0
.end method


# virtual methods
.method public bio()Z
    .locals 15

    iget v0, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/ywr$sis;->tsu:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/android/server/ywr$sis;->rtg:J

    sub-long v6, v2, v6

    iput-wide v0, p0, Lcom/android/server/ywr$sis;->tsu:J

    iput-wide v2, p0, Lcom/android/server/ywr$sis;->rtg:J

    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    add-long v9, v4, v6

    invoke-static {v8, v9, v10}, Lcom/android/server/ywr;->igw(Lcom/android/server/ywr;J)Z

    move-result v8

    iget-boolean v11, p0, Lcom/android/server/ywr$sis;->cno:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v11, v8, :cond_4

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v11}, Lcom/android/server/ywr;->gck(Lcom/android/server/ywr;)I

    move-result v11

    if-eq v8, v11, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v14, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v14}, Lcom/android/server/ywr;->gck(Lcom/android/server/ywr;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-boolean v13, p0, Lcom/android/server/ywr$sis;->cno:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    iget-object v14, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    invoke-virtual {v8, v11, v14}, Lcom/android/server/am/AppRecordManagerService;->noteStartTrafficHigh(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v14, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v14}, Lcom/android/server/ywr;->gck(Lcom/android/server/ywr;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v12, p0, Lcom/android/server/ywr$sis;->cno:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    iget-object v14, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    invoke-virtual {v8, v11, v14}, Lcom/android/server/am/AppRecordManagerService;->noteStopTrafficHigh(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v13

    if-ltz v8, :cond_6

    iget-object v11, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v11}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v11

    iget v14, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v11}, Lcom/android/server/ywr;->gck(Lcom/android/server/ywr;)I

    move-result v11

    if-eq v8, v11, :cond_6

    :cond_5
    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8}, Lcom/android/server/ywr;->wtn(Lcom/android/server/ywr;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v14, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v14}, Lcom/android/server/ywr;->gck(Lcom/android/server/ywr;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    iget-object v8, p0, Lcom/android/server/ywr$sis;->kth:Lcom/android/server/ywr;

    invoke-static {v8, v9, v10}, Lcom/android/server/ywr;->ywr(Lcom/android/server/ywr;J)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/android/server/ywr$sis;->ssp:Z

    if-nez v8, :cond_7

    iput-boolean v13, p0, Lcom/android/server/ywr$sis;->ssp:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v9, p0, Lcom/android/server/ywr$sis;->zta:I

    iget-object v10, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/AppRecordManagerService;->noteStartTraffic(ILjava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/server/ywr;->sis()Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUidTrafficLocked "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/ywr$sis;->zta:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": incTx("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), incRx("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), nowTx="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nowRx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/ywr$sis;->ssp:Z

    if-eqz v0, :cond_9

    iput-boolean v12, p0, Lcom/android/server/ywr$sis;->ssp:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ywr$sis;->zta:I

    iget-object v2, p0, Lcom/android/server/ywr$sis;->you:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRecordManagerService;->noteStopTraffic(ILjava/lang/String;)V

    :cond_9
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/ywr$sis;->ssp:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/ywr$sis;->cno:Z

    if-eqz p0, :cond_b

    :cond_a
    move v12, v13

    :cond_b
    return v12
.end method

.method public kth()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ywr$sis;->sis:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ywr$sis;->tsu:J

    iput-wide v0, p0, Lcom/android/server/ywr$sis;->rtg:J

    return-void
.end method
