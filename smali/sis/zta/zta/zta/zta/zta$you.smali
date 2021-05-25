.class public abstract Lsis/zta/zta/zta/zta/zta$you;
.super Landroid/os/HwBinder;
.source ""

# interfaces
.implements Lsis/zta/zta/zta/zta/zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsis/zta/zta/zta/zta/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final bio()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x7et
        -0x4ft
        -0x1bt
        0x3dt
        0x4et
        -0x5at
        0x6ft
        -0x3dt
        -0x45t
        0x42t
        -0x7at
        0x53t
        0xct
        -0x41t
        -0x47t
        0x1at
        0x51t
        0x4ft
        -0x67t
        0x3t
        -0x20t
        -0x2ct
        0x76t
        0x4bt
        -0x2t
        0x70t
        -0x3dt
        0x61t
        0x4ft
        -0x10t
        -0x77t
        0x70t
    .end array-data

    :array_1
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final cno()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.oneplus.engnative.engineer@1.0::IEngineer"

    return-object p0
.end method

.method public gck(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p4, "vendor.oneplus.engnative.engineer@1.0::IEngineer"

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string p4, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->you()V

    goto/16 :goto_7

    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->tsu()Lzta/zta/zta/zta/zta;

    move-result-object p0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Lzta/zta/zta/zta/zta;->rtg(Landroid/os/HwParcel;)V

    goto/16 :goto_6

    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->ssp()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->wtn()V

    goto/16 :goto_7

    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->bio()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v1, 0x8

    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v1, p2, 0x20

    invoke-direct {p4, v1}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v0, p2, :cond_1

    mul-int/lit8 v1, v0, 0x20

    int-to-long v1, v1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_0

    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    invoke-virtual {p4, v1, v2, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    goto/16 :goto_6

    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->cno()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsis/zta/zta/zta/zta/zta$you;->gck(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    goto/16 :goto_6

    :sswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->rtg()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lsis/zta/zta/zta/zta/zta;->m(Ljava/lang/String;IZILjava/util/ArrayList;)I

    move-result p0

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    new-instance v0, Lsis/zta/zta/zta/zta/zta$you$rtg;

    invoke-direct {v0, p0, p3}, Lsis/zta/zta/zta/zta/zta$you$rtg;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p4, p2, v0}, Lsis/zta/zta/zta/zta/zta;->cgv(Ljava/lang/String;IILsis/zta/zta/zta/zta/zta$cno;)V

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lsis/zta/zta/zta/zta/zta;->D(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p0

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lsis/zta/zta/zta/zta/zta;->y(II)I

    move-result p0

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lsis/zta/zta/zta/zta/zta;->u(III)I

    move-result p0

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lsis/zta/zta/zta/zta/zta$you$tsu;

    invoke-direct {p1, p0, p3}, Lsis/zta/zta/zta/zta/zta$you$tsu;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->K(Lsis/zta/zta/zta/zta/zta$ssp;)V

    goto/16 :goto_7

    :pswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lsis/zta/zta/zta/zta/zta$you$sis;

    invoke-direct {p1, p0, p3}, Lsis/zta/zta/zta/zta/zta$you$sis;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->ear(Lsis/zta/zta/zta/zta/zta$rtg;)V

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lsis/zta/zta/zta/zta/zta;->A()I

    move-result p0

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_9
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lsis/zta/zta/zta/zta/zta$you$you;

    invoke-direct {p1, p0, p3}, Lsis/zta/zta/zta/zta/zta$you$you;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->M(Lsis/zta/zta/zta/zta/zta$tsu;)V

    goto/16 :goto_7

    :pswitch_a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance p1, Lsis/zta/zta/zta/zta/zta$you$zta;

    invoke-direct {p1, p0, p3}, Lsis/zta/zta/zta/zta/zta$you$zta;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->bvj(Lsis/zta/zta/zta/zta/zta$sis;)V

    goto/16 :goto_7

    :pswitch_b
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lsis/zta/zta/zta/zta/zta;->l()I

    move-result p0

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->ugm(I)I

    move-result p0

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->cjf(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lsis/zta/zta/zta/zta/zta;->saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->x(Ljava/lang/String;)Z

    move-result p0

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lsis/zta/zta/zta/zta/zta;->hmo()Ljava/util/ArrayList;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_11
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lsis/zta/zta/zta/zta/zta;->v(Ljava/lang/String;Ljava/util/ArrayList;IIZ)I

    move-result p0

    goto :goto_3

    :pswitch_12
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lsis/zta/zta/zta/zta/zta;->resetProductLineTestResult()Z

    move-result p0

    goto/16 :goto_5

    :pswitch_13
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lsis/zta/zta/zta/zta/zta;->setProductLineTestResult(II)Z

    move-result p0

    goto :goto_5

    :pswitch_14
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lsis/zta/zta/zta/zta/zta;->getProductLineTestResult()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_4

    :pswitch_15
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lsis/zta/zta/zta/zta/zta;->fto(IILjava/util/ArrayList;)I

    move-result p0

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    goto :goto_6

    :pswitch_16
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lsis/zta/zta/zta/zta/zta;->getBadBatteryConfig(II)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_4

    :pswitch_17
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->a(Z)Z

    move-result p0

    goto :goto_5

    :pswitch_18
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lsis/zta/zta/zta/zta/zta;->q()Z

    move-result p0

    goto :goto_5

    :pswitch_19
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-interface {p0, p1}, Lsis/zta/zta/zta/zta/zta;->readEngineerData(I)Ljava/util/ArrayList;

    move-result-object p0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    goto :goto_6

    :pswitch_1a
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lsis/zta/zta/zta/zta/zta;->k(ILjava/util/ArrayList;I)Z

    move-result p0

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeBool(Z)V

    :goto_6
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.oneplus.engnative.engineer@1.0::IEngineer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final rtg()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.oneplus.engnative.engineer@1.0::IEngineer"

    const-string v1, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final ssp()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsis/zta/zta/zta/zta/zta$you;->cno()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tsu()Lzta/zta/zta/zta/zta;
    .locals 2

    new-instance p0, Lzta/zta/zta/zta/zta;

    invoke-direct {p0}, Lzta/zta/zta/zta/zta;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lzta/zta/zta/zta/zta;->zta:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzta/zta/zta/zta/zta;->you:J

    const/4 v0, 0x0

    iput v0, p0, Lzta/zta/zta/zta/zta;->sis:I

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final wtn()V
    .locals 0

    return-void
.end method

.method public final you()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method
