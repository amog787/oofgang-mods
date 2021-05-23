.class public final Lsis/you/zta/zta/you/ibl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public sis:Z

.field public you:Z

.field public zta:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsis/you/zta/zta/you/ibl;->zta:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsis/you/zta/zta/you/ibl;->you:Z

    iput-boolean v0, p0, Lsis/you/zta/zta/you/ibl;->sis:Z

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
            "Lsis/you/zta/zta/you/ibl;",
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

    mul-int/lit8 v3, v2, 0x8

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

    new-instance v4, Lsis/you/zta/zta/you/ibl;

    invoke-direct {v4}, Lsis/you/zta/zta/you/ibl;-><init>()V

    mul-int/lit8 v5, v3, 0x8

    int-to-long v5, v5

    invoke-virtual {v4, p0, v1, v5, v6}, Lsis/you/zta/zta/you/ibl;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lsis/you/zta/zta/you/ibl;",
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

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsis/you/zta/zta/you/ibl;

    mul-int/lit8 v5, v4, 0x8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lsis/you/zta/zta/you/ibl;->tsu(Landroid/os/HwBlob;J)V

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

    const-class v3, Lsis/you/zta/zta/you/ibl;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lsis/you/zta/zta/you/ibl;

    iget v2, p0, Lsis/you/zta/zta/you/ibl;->zta:F

    iget v3, p1, Lsis/you/zta/zta/you/ibl;->zta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lsis/you/zta/zta/you/ibl;->you:Z

    iget-boolean v3, p1, Lsis/you/zta/zta/you/ibl;->you:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean p0, p0, Lsis/you/zta/zta/you/ibl;->sis:Z

    iget-boolean p1, p1, Lsis/you/zta/zta/you/ibl;->sis:Z

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lsis/you/zta/zta/you/ibl;->zta:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lsis/you/zta/zta/you/ibl;->you:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lsis/you/zta/zta/you/ibl;->sis:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final rtg(Landroid/os/HwParcel;)V
    .locals 3

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lsis/you/zta/zta/you/ibl;->tsu(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".rotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsis/you/zta/zta/you/ibl;->zta:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", .flipHorizontal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsis/you/zta/zta/you/ibl;->you:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .flipVertical = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lsis/you/zta/zta/you/ibl;->sis:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget v2, p0, Lsis/you/zta/zta/you/ibl;->zta:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lsis/you/zta/zta/you/ibl;->you:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x5

    add-long/2addr p2, v0

    iget-boolean p0, p0, Lsis/you/zta/zta/you/ibl;->sis:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final you(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lsis/you/zta/zta/you/ibl;->zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final zta(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 2

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Lsis/you/zta/zta/you/ibl;->zta:F

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lsis/you/zta/zta/you/ibl;->you:Z

    const-wide/16 v0, 0x5

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lsis/you/zta/zta/you/ibl;->sis:Z

    return-void
.end method
