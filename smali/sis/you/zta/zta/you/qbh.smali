.class public final Lsis/you/zta/zta/you/qbh;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bio:Landroid/os/NativeHandle;

.field public cno:I

.field public igw:Lsis/you/zta/zta/you/zta;

.field public kth:I

.field public rtg:Lsis/you/zta/zta/you/you;

.field public sis:I

.field public ssp:I

.field public tsu:I

.field public you:I

.field public zta:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->zta:I

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->you:I

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->sis:I

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->tsu:I

    new-instance v1, Lsis/you/zta/zta/you/you;

    invoke-direct {v1}, Lsis/you/zta/zta/you/you;-><init>()V

    iput-object v1, p0, Lsis/you/zta/zta/you/qbh;->rtg:Lsis/you/zta/zta/you/you;

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->ssp:I

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->cno:I

    iput v0, p0, Lsis/you/zta/zta/you/qbh;->kth:I

    new-instance v0, Landroid/os/NativeHandle;

    invoke-direct {v0}, Landroid/os/NativeHandle;-><init>()V

    iput-object v0, p0, Lsis/you/zta/zta/you/qbh;->bio:Landroid/os/NativeHandle;

    new-instance v0, Lsis/you/zta/zta/you/zta;

    invoke-direct {v0}, Lsis/you/zta/zta/you/zta;-><init>()V

    iput-object v0, p0, Lsis/you/zta/zta/you/qbh;->igw:Lsis/you/zta/zta/you/zta;

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
            "Lsis/you/zta/zta/you/qbh;",
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

    mul-int/lit16 v3, v2, 0xa0

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

    new-instance v4, Lsis/you/zta/zta/you/qbh;

    invoke-direct {v4}, Lsis/you/zta/zta/you/qbh;-><init>()V

    mul-int/lit16 v5, v3, 0xa0

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lsis/you/zta/zta/you/qbh;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lsis/you/zta/zta/you/qbh;",
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

    mul-int/lit16 v3, v1, 0xa0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsis/you/zta/zta/you/qbh;

    mul-int/lit16 v5, v4, 0xa0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lsis/you/zta/zta/you/qbh;->tsu(Landroid/os/HwBlob;J)V

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

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsis/you/zta/zta/you/qbh;->tsu(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .unalignedWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->sis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .unalignedHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .colorMetadata = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/zta/zta/you/qbh;->rtg:Lsis/you/zta/zta/you/you;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .acquireFenceFd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->ssp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .releaseFenceFd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->cno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/qbh;->kth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .bufferHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/zta/zta/you/qbh;->bio:Landroid/os/NativeHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .bufferInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsis/you/zta/zta/you/qbh;->igw:Lsis/you/zta/zta/you/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tsu(Landroid/os/HwBlob;J)V
    .locals 3

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->zta:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->you:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->sis:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->tsu:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v0, p0, Lsis/you/zta/zta/you/qbh;->rtg:Lsis/you/zta/zta/you/you;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lsis/you/zta/zta/you/you;->tsu(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->ssp:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->cno:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget v2, p0, Lsis/you/zta/zta/you/qbh;->kth:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x50

    add-long/2addr v0, p2

    iget-object v2, p0, Lsis/you/zta/zta/you/qbh;->bio:Landroid/os/NativeHandle;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putNativeHandle(JLandroid/os/NativeHandle;)V

    iget-object p0, p0, Lsis/you/zta/zta/you/qbh;->igw:Lsis/you/zta/zta/you/zta;

    const-wide/16 v0, 0x60

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lsis/you/zta/zta/you/zta;->tsu(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final you(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xa0

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lsis/you/zta/zta/you/qbh;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 6

    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->zta:I

    const-wide/16 v2, 0x4

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->you:I

    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->sis:I

    const-wide/16 v2, 0xc

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->tsu:I

    iget-object v2, p0, Lsis/you/zta/zta/you/qbh;->rtg:Lsis/you/zta/zta/you/you;

    const-wide/16 v3, 0x10

    add-long/2addr v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lsis/you/zta/zta/you/you;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0x40

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->ssp:I

    const-wide/16 v2, 0x44

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->cno:I

    const-wide/16 v2, 0x48

    add-long/2addr v2, p3

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lsis/you/zta/zta/you/qbh;->kth:I

    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v2

    const-wide/16 v4, 0x50

    add-long/2addr v4, p3

    add-long/2addr v4, v0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/os/HwParcel;->readEmbeddedNativeHandle(JJ)Landroid/os/NativeHandle;

    move-result-object v0

    iput-object v0, p0, Lsis/you/zta/zta/you/qbh;->bio:Landroid/os/NativeHandle;

    iget-object p0, p0, Lsis/you/zta/zta/you/qbh;->igw:Lsis/you/zta/zta/you/zta;

    const-wide/16 v0, 0x60

    add-long/2addr p3, v0

    invoke-virtual {p0, p1, p2, p3, p4}, Lsis/you/zta/zta/you/zta;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method
