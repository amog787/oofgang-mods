.class public final Lsis/you/zta/zta/you/zta;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bio:I

.field public cno:F

.field public igw:J

.field public kth:I

.field public rtg:I

.field public sis:I

.field public ssp:I

.field public tsu:I

.field public wtn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public you:I

.field public zta:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsis/you/zta/zta/you/zta;->zta:J

    const/4 v2, 0x0

    iput v2, p0, Lsis/you/zta/zta/you/zta;->you:I

    iput v2, p0, Lsis/you/zta/zta/you/zta;->sis:I

    iput v2, p0, Lsis/you/zta/zta/you/zta;->tsu:I

    iput v2, p0, Lsis/you/zta/zta/you/zta;->rtg:I

    iput v2, p0, Lsis/you/zta/zta/you/zta;->ssp:I

    const/4 v3, 0x0

    iput v3, p0, Lsis/you/zta/zta/you/zta;->cno:F

    iput v2, p0, Lsis/you/zta/zta/you/zta;->kth:I

    iput v2, p0, Lsis/you/zta/zta/you/zta;->bio:I

    iput-wide v0, p0, Lsis/you/zta/zta/you/zta;->igw:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

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
            "Lsis/you/zta/zta/you/zta;",
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

    mul-int/lit8 v3, v2, 0x40

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

    new-instance v4, Lsis/you/zta/zta/you/zta;

    invoke-direct {v4}, Lsis/you/zta/zta/you/zta;-><init>()V

    mul-int/lit8 v5, v3, 0x40

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lsis/you/zta/zta/you/zta;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lsis/you/zta/zta/you/zta;",
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

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsis/you/zta/zta/you/zta;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lsis/you/zta/zta/you/zta;->tsu(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lsis/you/zta/zta/you/zta;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsis/you/zta/zta/you/zta;

    iget-wide v2, p0, Lsis/you/zta/zta/you/zta;->zta:J

    iget-wide v4, p1, Lsis/you/zta/zta/you/zta;->zta:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Lsis/you/zta/zta/you/zta;->you:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->you:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lsis/you/zta/zta/you/zta;->sis:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->sis:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lsis/you/zta/zta/you/zta;->tsu:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->tsu:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lsis/you/zta/zta/you/zta;->rtg:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->rtg:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lsis/you/zta/zta/you/zta;->ssp:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->ssp:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lsis/you/zta/zta/you/zta;->cno:F

    iget v3, p1, Lsis/you/zta/zta/you/zta;->cno:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lsis/you/zta/zta/you/zta;->kth:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->kth:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Lsis/you/zta/zta/you/zta;->bio:I

    iget v3, p1, Lsis/you/zta/zta/you/zta;->bio:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget-wide v2, p0, Lsis/you/zta/zta/you/zta;->igw:J

    iget-wide v4, p1, Lsis/you/zta/zta/you/zta;->igw:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    return v1

    :cond_c
    iget-object p0, p0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    iget-object p1, p1, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lsis/you/zta/zta/you/zta;->zta:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->you:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->sis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->tsu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->rtg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->ssp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->cno:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->kth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/zta;->bio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lsis/you/zta/zta/you/zta;->igw:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object p0, p0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final rtg(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsis/you/zta/zta/you/zta;->tsu(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsis/you/zta/zta/you/zta;->zta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->sis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->rtg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->ssp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .refreshRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->cno:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .frcEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->kth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .frcCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/zta;->bio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .frcTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsis/you/zta/zta/you/zta;->igw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", .reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tsu(Landroid/os/HwBlob;J)V
    .locals 10

    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-wide v4, p0, Lsis/you/zta/zta/you/zta;->zta:J

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt64(JJ)V

    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Lsis/you/zta/zta/you/zta;->you:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget v8, p0, Lsis/you/zta/zta/you/zta;->sis:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    iget v8, p0, Lsis/you/zta/zta/you/zta;->tsu:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x14

    add-long/2addr v6, p2

    iget v8, p0, Lsis/you/zta/zta/you/zta;->rtg:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x18

    add-long/2addr v6, p2

    iget v8, p0, Lsis/you/zta/zta/you/zta;->ssp:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x1c

    add-long/2addr v6, p2

    iget v8, p0, Lsis/you/zta/zta/you/zta;->cno:F

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v6, 0x20

    add-long/2addr v6, p2

    iget v8, p0, Lsis/you/zta/zta/you/zta;->kth:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x24

    add-long/2addr v6, p2

    iget v8, p0, Lsis/you/zta/zta/you/zta;->bio:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x28

    add-long/2addr v6, p2

    iget-wide v8, p0, Lsis/you/zta/zta/you/zta;->igw:J

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/os/HwBlob;->putInt64(JJ)V

    iget-object v6, p0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x30

    add-long/2addr p2, v7

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v4, p2

    const/4 v2, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v6, 0x4

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v2, v6, :cond_0

    mul-int/lit8 v4, v2, 0x4

    int-to-long v4, v4

    iget-object v7, p0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v4, v5, v7}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final you(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lsis/you/zta/zta/you/zta;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v4

    iput-wide v4, v0, Lsis/you/zta/zta/you/zta;->zta:J

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->you:I

    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->sis:I

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->tsu:I

    const-wide/16 v6, 0x14

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->rtg:I

    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->ssp:I

    const-wide/16 v6, 0x1c

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getFloat(J)F

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->cno:F

    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->kth:I

    const-wide/16 v6, 0x24

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/zta;->bio:I

    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, Lsis/you/zta/zta/you/zta;->igw:J

    const-wide/16 v6, 0x30

    add-long v6, p3, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v9, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    mul-int/lit8 v3, v2, 0x4

    int-to-long v5, v3

    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iget-object v5, v0, Lsis/you/zta/zta/you/zta;->wtn:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
