.class Lcom/android/server/am/OnePlusBGController$obl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "obl"
.end annotation


# instance fields
.field bio:Z

.field cno:Z

.field igw:Lcom/android/server/am/OnePlusBGController$ProcType;

.field kth:Z

.field private rtg:Lcom/android/server/am/OnePlusBGController$ugm;

.field sis:I

.field ssp:Z

.field tsu:J

.field final synthetic wtn:Lcom/android/server/am/OnePlusBGController;

.field you:I

.field final zta:Landroid/util/SparseLongArray;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;IZI)V
    .locals 7

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$obl;->wtn:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->ssp:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->kth:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->bio:Z

    iput p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    iput p4, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-virtual {p0, p4}, Lcom/android/server/am/OnePlusBGController$obl;->dma(I)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->N()I

    move-result v3

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->bio:Z

    :cond_0
    iput-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->ssp:Z

    new-instance p3, Lcom/android/server/am/OnePlusBGController$ugm;

    invoke-direct {p3, p1, p2}, Lcom/android/server/am/OnePlusBGController$ugm;-><init>(Lcom/android/server/am/OnePlusBGController;I)V

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->tsu:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    const-wide/16 v3, 0x0

    invoke-virtual {p2, p4, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 p2, 0x5

    if-eq p4, p2, :cond_2

    const/4 p2, 0x3

    if-eq p4, p2, :cond_2

    const/4 p2, 0x4

    if-ne p4, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    iget-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->ssp:Z

    invoke-static {p1, p3, p4}, Lcom/android/server/am/OnePlusBGController;->w(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->sis:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_2
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "##snapshot of traffic #base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/OnePlusBGController$ugm;->you:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    iget p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-static {p3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/OnePlusBGController$ugm;->sis:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    iget p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-static {p3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/am/OnePlusBGController$ugm;->tsu:J

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mIsBackGround init to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->x()Z

    move-result p2

    if-eqz p2, :cond_6

    const v1, 0x101d3

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBGController;->y(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$ProcType;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    move-object v0, p1

    move-object v4, p0

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/am/OnePlusBGController;->z(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$obl;Lcom/android/server/am/OnePlusBGController$ProcType;I)V

    :cond_6
    return-void
.end method


# virtual methods
.method bio()Z
    .locals 1

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

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

.method cno()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    return p0
.end method

.method dma(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$obl;->kth:Z

    return-void
.end method

.method gck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$obl;->ssp:Z

    return-void
.end method

.method igw(I)Z
    .locals 3

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->kth:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method kth(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->wtn:Lcom/android/server/am/OnePlusBGController;

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->ssp:Z

    invoke-static {v1, p0, p1}, Lcom/android/server/am/OnePlusBGController;->w(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method rtg()Lcom/android/server/am/OnePlusBGController$ugm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    return-object p0
.end method

.method sis()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method ssp()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    return p0
.end method

.method tsu()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$obl;->wtn:Lcom/android/server/am/OnePlusBGController;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$obl;->ssp:Z

    invoke-static {v4, v5, v3}, Lcom/android/server/am/OnePlusBGController;->w(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method wtn(IZ)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x14

    if-ne v2, v6, :cond_0

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto/16 :goto_2

    :cond_0
    if-ne p1, v2, :cond_1

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController$obl;->tsu:J

    sub-long v6, v0, v6

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    iget v8, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-virtual {v2, v8}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v8, v6

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-virtual {v2, v6, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_2
    if-eqz p2, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$obl;->kth(I)Z

    move-result p2

    if-eqz p2, :cond_9

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    iput-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##snapshot of traffic #base: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/OnePlusBGController$ugm;->you:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/OnePlusBGController$ugm;->sis:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->rtg:Lcom/android/server/am/OnePlusBGController$ugm;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/OnePlusBGController$ugm;->tsu:J

    :cond_4
    const/4 p2, 0x5

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_5

    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    if-eqz p2, :cond_8

    if-eqz v3, :cond_7

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->sis:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_0

    :cond_7
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_0

    :cond_8
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_0
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsBackGround update to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->x()Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$obl;->igw(I)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->x()Z

    move-result p2

    if-eqz p2, :cond_a

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->wtn:Lcom/android/server/am/OnePlusBGController;

    const v3, 0x101d3

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-static {v2, p2}, Lcom/android/server/am/OnePlusBGController;->y(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$ProcType;)J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    move-object v6, p0

    move v8, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/am/OnePlusBGController;->z(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$obl;Lcom/android/server/am/OnePlusBGController$ProcType;I)V

    :cond_a
    :goto_2
    iput p1, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$obl;->dma(I)V

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->tsu:J

    return-void
.end method

.method you()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    return p0
.end method

.method zta()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " background= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$obl;->tsu()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " total= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$obl;->sis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " IsBackGround= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->cno:Z

    if-eqz v1, :cond_0

    const-string v1, "B"

    goto :goto_0

    :cond_0
    const-string v1, "F"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Top= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$obl;->zta:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$obl;->wtn:Lcom/android/server/am/OnePlusBGController;

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$obl;->you:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController;->A(Lcom/android/server/am/OnePlusBGController;IZ)Z

    return-void
.end method
