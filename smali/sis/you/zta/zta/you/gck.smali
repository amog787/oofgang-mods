.class public final Lsis/you/zta/zta/you/gck;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bio:I

.field public cno:I

.field public dma:I

.field public gck:I

.field public igw:I

.field public kth:I

.field public rtg:I

.field public sis:I

.field public ssp:I

.field public tsu:I

.field public wtn:I

.field public you:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public ywr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public zta:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsis/you/zta/zta/you/gck;->zta:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    iput v0, p0, Lsis/you/zta/zta/you/gck;->sis:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->tsu:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->rtg:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->ssp:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->cno:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->kth:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->bio:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->igw:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->wtn:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->gck:I

    iput v0, p0, Lsis/you/zta/zta/you/gck;->dma:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

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
            "Lsis/you/zta/zta/you/gck;",
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

    mul-int/lit8 v3, v2, 0x58

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

    new-instance v4, Lsis/you/zta/zta/you/gck;

    invoke-direct {v4}, Lsis/you/zta/zta/you/gck;-><init>()V

    mul-int/lit8 v5, v3, 0x58

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lsis/you/zta/zta/you/gck;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lsis/you/zta/zta/you/gck;",
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

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsis/you/zta/zta/you/gck;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lsis/you/zta/zta/you/gck;->tsu(Landroid/os/HwBlob;J)V

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
    .locals 4

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

    const-class v3, Lsis/you/zta/zta/you/gck;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsis/you/zta/zta/you/gck;

    iget v2, p0, Lsis/you/zta/zta/you/gck;->zta:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->zta:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    iget-object v3, p1, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, Lsis/you/zta/zta/you/gck;->sis:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->sis:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lsis/you/zta/zta/you/gck;->tsu:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->tsu:I

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget v2, p0, Lsis/you/zta/zta/you/gck;->rtg:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->rtg:I

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget v2, p0, Lsis/you/zta/zta/you/gck;->ssp:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->ssp:I

    if-eq v2, v3, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lsis/you/zta/zta/you/gck;->cno:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->cno:I

    if-eq v2, v3, :cond_9

    return v1

    :cond_9
    iget v2, p0, Lsis/you/zta/zta/you/gck;->kth:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->kth:I

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget v2, p0, Lsis/you/zta/zta/you/gck;->bio:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->bio:I

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    iget v2, p0, Lsis/you/zta/zta/you/gck;->igw:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->igw:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget v2, p0, Lsis/you/zta/zta/you/gck;->wtn:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->wtn:I

    if-eq v2, v3, :cond_d

    return v1

    :cond_d
    iget v2, p0, Lsis/you/zta/zta/you/gck;->gck:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->gck:I

    if-eq v2, v3, :cond_e

    return v1

    :cond_e
    iget v2, p0, Lsis/you/zta/zta/you/gck;->dma:I

    iget v3, p1, Lsis/you/zta/zta/you/gck;->dma:I

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    iget-object p0, p0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    iget-object p1, p1, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    return v1

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->zta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->sis:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->tsu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->rtg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->ssp:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->cno:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->kth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->bio:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->igw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->wtn:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->gck:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lsis/you/zta/zta/you/gck;->dma:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object p0, p0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xd

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final rtg(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsis/you/zta/zta/you/gck;->tsu(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".hdrFormal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .hdrLut = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .memcEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->sis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .memcLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .dualChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->rtg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .movingLayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->ssp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .memcVideoLayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->cno:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .inMemcState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->kth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .videoFps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->bio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .videoInMemory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->igw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .gameMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->wtn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .captureDisable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->gck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .dualPrepare = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/gck;->dma:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .reserved = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tsu(Landroid/os/HwBlob;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Lsis/you/zta/zta/you/gck;->zta:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v4, v0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_0
    if-ge v12, v4, :cond_0

    mul-int/lit8 v14, v12, 0x4

    int-to-long v14, v14

    iget-object v13, v0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->sis:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x1c

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->tsu:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->rtg:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x24

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->ssp:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x28

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->cno:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x2c

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->kth:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x30

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->bio:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x34

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->igw:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x38

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->wtn:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x3c

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->gck:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0x40

    add-long v7, p2, v7

    iget v4, v0, Lsis/you/zta/zta/you/gck;->dma:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v4, v0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x48

    add-long v7, p2, v7

    add-long/2addr v5, v7

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v5, 0x0

    invoke-virtual {v1, v9, v10, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x4

    invoke-direct {v6, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v5

    :goto_1
    if-ge v13, v4, :cond_1

    mul-int/lit8 v5, v13, 0x4

    int-to-long v9, v5

    iget-object v5, v0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v9, v10, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-long/2addr v7, v2

    invoke-virtual {v1, v7, v8, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final you(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lsis/you/zta/zta/you/gck;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lsis/you/zta/zta/you/gck;->zta:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    add-long v8, v6, v4

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x4

    int-to-long v11, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    iget-object v7, v0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_0

    mul-int/lit8 v10, v9, 0x4

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    iget-object v11, v0, Lsis/you/zta/zta/you/gck;->you:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x18

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->sis:I

    const-wide/16 v8, 0x1c

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->tsu:I

    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->rtg:I

    const-wide/16 v8, 0x24

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->ssp:I

    const-wide/16 v8, 0x28

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->cno:I

    const-wide/16 v8, 0x2c

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->kth:I

    const-wide/16 v8, 0x30

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->bio:I

    const-wide/16 v8, 0x34

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->igw:I

    const-wide/16 v8, 0x38

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->wtn:I

    const-wide/16 v8, 0x3c

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->gck:I

    const-wide/16 v8, 0x40

    add-long v8, p3, v8

    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Lsis/you/zta/zta/you/gck;->dma:I

    const-wide/16 v8, 0x48

    add-long v8, p3, v8

    add-long/2addr v4, v8

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x4

    int-to-long v11, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    iget-object v2, v0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v7, v4, :cond_1

    mul-int/lit8 v2, v7, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iget-object v3, v0, Lsis/you/zta/zta/you/gck;->ywr:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
