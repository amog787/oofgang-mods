.class public final Lsis/you/zta/zta/you/ywr;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public rtg:B

.field public sis:Lsis/you/zta/zta/you/oif;

.field public ssp:I

.field public tsu:Lsis/you/zta/zta/you/ibl;

.field public you:I

.field public zta:Lsis/you/zta/zta/you/qbh;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsis/you/zta/zta/you/qbh;

    invoke-direct {v0}, Lsis/you/zta/zta/you/qbh;-><init>()V

    iput-object v0, p0, Lsis/you/zta/zta/you/ywr;->zta:Lsis/you/zta/zta/you/qbh;

    const/4 v0, 0x0

    iput v0, p0, Lsis/you/zta/zta/you/ywr;->you:I

    new-instance v1, Lsis/you/zta/zta/you/oif;

    invoke-direct {v1}, Lsis/you/zta/zta/you/oif;-><init>()V

    iput-object v1, p0, Lsis/you/zta/zta/you/ywr;->sis:Lsis/you/zta/zta/you/oif;

    new-instance v1, Lsis/you/zta/zta/you/ibl;

    invoke-direct {v1}, Lsis/you/zta/zta/you/ibl;-><init>()V

    iput-object v1, p0, Lsis/you/zta/zta/you/ywr;->tsu:Lsis/you/zta/zta/you/ibl;

    iput-byte v0, p0, Lsis/you/zta/zta/you/ywr;->rtg:B

    iput v0, p0, Lsis/you/zta/zta/you/ywr;->ssp:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsis/you/zta/zta/you/ywr;->cno:Ljava/util/ArrayList;

    return-void
.end method

.method public static final sis(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsis/you/zta/zta/you/ywr;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xd8

    int-to-long v5, v3

    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Lsis/you/zta/zta/you/ywr;

    invoke-direct {v4}, Lsis/you/zta/zta/you/ywr;-><init>()V

    mul-int/lit16 v5, v3, 0xd8

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lsis/you/zta/zta/you/ywr;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final ssp(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lsis/you/zta/zta/you/ywr;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xd8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsis/you/zta/zta/you/ywr;

    mul-int/lit16 v5, v4, 0xd8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lsis/you/zta/zta/you/ywr;->tsu(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final rtg(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsis/you/zta/zta/you/ywr;->tsu(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".inputBuffer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/zta/zta/you/ywr;->zta:Lsis/you/zta/zta/you/qbh;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .composition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/ywr;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .dstRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/zta/zta/you/ywr;->sis:Lsis/you/zta/zta/you/oif;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .transform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/zta/zta/you/ywr;->tsu:Lsis/you/zta/zta/you/ibl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .planeAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lsis/you/zta/zta/you/ywr;->rtg:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .layerFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/ywr;->ssp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsis/you/zta/zta/you/ywr;->cno:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tsu(Landroid/os/HwBlob;J)V
    .locals 8

    iget-object v0, p0, Lsis/you/zta/zta/you/ywr;->zta:Lsis/you/zta/zta/you/qbh;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lsis/you/zta/zta/you/qbh;->tsu(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0xa0

    add-long/2addr v3, p2

    iget v0, p0, Lsis/you/zta/zta/you/ywr;->you:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v0, p0, Lsis/you/zta/zta/you/ywr;->sis:Lsis/you/zta/zta/you/oif;

    const-wide/16 v3, 0xa4

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lsis/you/zta/zta/you/oif;->tsu(Landroid/os/HwBlob;J)V

    iget-object v0, p0, Lsis/you/zta/zta/you/ywr;->tsu:Lsis/you/zta/zta/you/ibl;

    const-wide/16 v3, 0xb4

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lsis/you/zta/zta/you/ibl;->tsu(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0xbc

    add-long/2addr v3, p2

    iget-byte v0, p0, Lsis/you/zta/zta/you/ywr;->rtg:B

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v3, 0xc0

    add-long/2addr v3, p2

    iget v0, p0, Lsis/you/zta/zta/you/ywr;->ssp:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v0, p0, Lsis/you/zta/zta/you/ywr;->cno:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0xc8

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v4, v5, 0x4

    int-to-long v6, v4

    iget-object v4, p0, Lsis/you/zta/zta/you/ywr;->cno:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v1

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final you(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xd8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lsis/you/zta/zta/you/ywr;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lsis/you/zta/zta/you/ywr;->zta:Lsis/you/zta/zta/you/qbh;

    const-wide/16 v4, 0x0

    add-long v6, p3, v4

    invoke-virtual {v3, p1, v2, v6, v7}, Lsis/you/zta/zta/you/qbh;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v6, 0xa0

    add-long v6, p3, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lsis/you/zta/zta/you/ywr;->you:I

    iget-object v3, v0, Lsis/you/zta/zta/you/ywr;->sis:Lsis/you/zta/zta/you/oif;

    const-wide/16 v6, 0xa4

    add-long v6, p3, v6

    invoke-virtual {v3, p1, v2, v6, v7}, Lsis/you/zta/zta/you/oif;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v3, v0, Lsis/you/zta/zta/you/ywr;->tsu:Lsis/you/zta/zta/you/ibl;

    const-wide/16 v6, 0xb4

    add-long v6, p3, v6

    invoke-virtual {v3, p1, v2, v6, v7}, Lsis/you/zta/zta/you/ibl;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v6, 0xbc

    add-long v6, p3, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v3

    iput-byte v3, v0, Lsis/you/zta/zta/you/ywr;->rtg:B

    const-wide/16 v6, 0xc0

    add-long v6, p3, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Lsis/you/zta/zta/you/ywr;->ssp:I

    const-wide/16 v6, 0xc8

    add-long v6, p3, v6

    const-wide/16 v8, 0x8

    add-long/2addr v8, v6

    invoke-virtual {v2, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v9

    mul-int/lit8 v3, v9, 0x4

    int-to-long v10, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long/2addr v6, v4

    const/4 v8, 0x1

    move-wide v2, v10

    move-wide v4, v12

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Lsis/you/zta/zta/you/ywr;->cno:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v9, :cond_0

    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iget-object v4, v0, Lsis/you/zta/zta/you/ywr;->cno:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
