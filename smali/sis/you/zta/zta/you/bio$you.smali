.class public abstract Lsis/you/zta/zta/you/bio$you;
.super Landroid/os/HwBinder;
.source ""

# interfaces
.implements Lsis/you/zta/zta/you/bio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsis/you/zta/zta/you/bio;
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

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        -0x2dt
        -0x4at
        0x7at
        0x53t
        -0x65t
        0x7et
        0x5et
        -0xet
        0x51t
        -0x2t
        0x2dt
        0x2ft
        -0x2ft
        0x57t
        0x2t
        0x24t
        -0x5bt
        -0x70t
        -0x3at
        -0x21t
        0x35t
        0x7et
        0x6dt
        0x2t
        0x69t
        0x12t
        -0x3at
        0x33t
        -0x47t
        -0x64t
        0x6at
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x4dt
        -0x23t
        -0x33t
        -0x20t
        -0x9t
        0x27t
        -0x12t
        -0x76t
        0x7t
        -0x51t
        -0x6t
        0x21t
        0x6t
        -0x11t
        0x69t
        0x60t
        0x39t
        0x7bt
        -0x31t
        -0x17t
        -0x11t
        0x5at
        0x8t
        -0x79t
        -0x15t
        -0x1ft
        0x6t
        -0x25t
        0x68t
        0x17t
        0x5t
        -0x4et
    .end array-data

    :array_2
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

    const-string p0, "vendor.pixelworks.hardware.display@1.1::IIris"

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v2, "vendor.pixelworks.hardware.display@1.0::IIris"

    const-string v3, "vendor.pixelworks.hardware.display@1.1::IIris"

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->you()V

    goto/16 :goto_5

    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->tsu()Lzta/zta/zta/zta/zta;

    move-result-object v0

    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, p3}, Lzta/zta/zta/zta/zta;->rtg(Landroid/os/HwParcel;)V

    goto/16 :goto_4

    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->ssp()V

    goto/16 :goto_2

    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->wtn()V

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->bio()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v8, v2, :cond_1

    mul-int/lit8 v4, v8, 0x20

    int-to-long v4, v4

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_0

    array-length v7, v6

    const/16 v9, 0x20

    if-ne v7, v9, :cond_0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    goto/16 :goto_4

    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->cno()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lsis/you/zta/zta/you/bio$you;->gck(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->rtg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    goto/16 :goto_4

    :pswitch_0
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-interface {p0, v1}, Lsis/you/zta/zta/you/bio;->veq(Z)V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lsis/you/zta/zta/you/bio;->s(J)I

    move-result v0

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lsis/you/zta/zta/you/bio;->oxb(J)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v1}, Lsis/you/zta/zta/you/bio;->h(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v1}, Lsis/you/zta/zta/you/bio;->b(I)V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v1, Lsis/you/zta/zta/you/bio$you$ssp;

    invoke-direct {v1, p0, p3}, Lsis/you/zta/zta/you/bio$you$ssp;-><init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v1}, Lsis/you/zta/zta/you/bio;->e(Lsis/you/zta/zta/you/bio$sis;)V

    goto/16 :goto_5

    :pswitch_6
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v1}, Lsis/you/zta/zta/you/bio;->zgw(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-interface {p0, v2, v3, v1}, Lsis/you/zta/zta/you/bio;->qbh(JZ)V

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-interface {p0, v2, v3, v1}, Lsis/you/zta/zta/you/bio;->R(JZ)V

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v2, v3, v4, v1}, Lsis/you/zta/zta/you/bio;->d(JII)I

    move-result v0

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-interface {p0, v2, v3, v4, v5}, Lsis/you/zta/zta/you/bio;->ivd(JJ)V

    goto/16 :goto_2

    :pswitch_b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->I(JJI)V

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->G(JJI)V

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    new-instance v6, Lsis/you/zta/zta/you/kth;

    invoke-direct {v6}, Lsis/you/zta/zta/you/kth;-><init>()V

    invoke-virtual {v6, p2}, Lsis/you/zta/zta/you/kth;->you(Landroid/os/HwParcel;)V

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->oif(JJLsis/you/zta/zta/you/kth;)V

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->ire(JJI)V

    goto/16 :goto_2

    :pswitch_f
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    new-instance v9, Lsis/you/zta/zta/you/zta;

    invoke-direct {v9}, Lsis/you/zta/zta/you/zta;-><init>()V

    invoke-virtual {v9, p2}, Lsis/you/zta/zta/you/zta;->you(Landroid/os/HwParcel;)V

    move-object v0, p0

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, v6

    move v6, v7

    move-object v7, v9

    invoke-interface/range {v0 .. v7}, Lsis/you/zta/zta/you/bio;->J(JJLandroid/os/NativeHandle;ILsis/you/zta/zta/you/zta;)V

    goto/16 :goto_2

    :pswitch_10
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v2, v3, v1}, Lsis/you/zta/zta/you/bio;->p(JI)V

    goto/16 :goto_2

    :pswitch_11
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v1

    invoke-interface {p0, v1, v2}, Lsis/you/zta/zta/you/bio;->vdw(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_12
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v2, v3, v4, v1}, Lsis/you/zta/zta/you/bio;->F(JII)I

    move-result v0

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->E(JIZZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move-wide v4, v5

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->B(JIJ)V

    goto/16 :goto_2

    :pswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lsis/you/zta/zta/you/bio$you$rtg;

    invoke-direct {v6, p0, p3}, Lsis/you/zta/zta/you/bio$you$rtg;-><init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V

    move-object v0, p0

    move-wide v1, v2

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/you/zta/zta/you/bio;->L(JILjava/util/ArrayList;Lsis/you/zta/zta/you/bio$rtg;)V

    goto/16 :goto_5

    :pswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {p0, v2, v3, v1}, Lsis/you/zta/zta/you/bio;->z(JI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v4, Lsis/you/zta/zta/you/bio$you$tsu;

    invoke-direct {v4, p0, p3}, Lsis/you/zta/zta/you/bio$you$tsu;-><init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v2, v3, v1, v4}, Lsis/you/zta/zta/you/bio;->n(JILsis/you/zta/zta/you/bio$tsu;)V

    goto/16 :goto_5

    :pswitch_18
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    new-instance v4, Lsis/you/zta/zta/you/sis;

    invoke-direct {v4}, Lsis/you/zta/zta/you/sis;-><init>()V

    invoke-virtual {v4, p2}, Lsis/you/zta/zta/you/sis;->you(Landroid/os/HwParcel;)V

    invoke-interface {p0, v2, v3, v4}, Lsis/you/zta/zta/you/bio;->g(JLsis/you/zta/zta/you/sis;)V

    goto :goto_2

    :pswitch_19
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    new-instance v4, Lsis/you/zta/zta/you/bvj;

    invoke-direct {v4}, Lsis/you/zta/zta/you/bvj;-><init>()V

    invoke-virtual {v4, p2}, Lsis/you/zta/zta/you/bvj;->you(Landroid/os/HwParcel;)V

    invoke-interface {p0, v2, v3, v4}, Lsis/you/zta/zta/you/bio;->t(JLsis/you/zta/zta/you/bvj;)V

    goto :goto_2

    :pswitch_1a
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-interface {p0, v2, v3, v4, v5}, Lsis/you/zta/zta/you/bio;->gwm(JJ)V

    goto :goto_2

    :pswitch_1b
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-interface {p0, v2, v3, v4, v5}, Lsis/you/zta/zta/you/bio;->j(JJ)V

    goto :goto_2

    :pswitch_1c
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lsis/you/zta/zta/you/wtn;->zta(Landroid/os/IHwBinder;)Lsis/you/zta/zta/you/wtn;

    move-result-object v1

    invoke-interface {p0, v1}, Lsis/you/zta/zta/you/bio;->ibl(Lsis/you/zta/zta/you/wtn;)V

    goto/16 :goto_5

    :pswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lsis/you/zta/zta/you/igw;->zta(Landroid/os/IHwBinder;)Lsis/you/zta/zta/you/igw;

    move-result-object v1

    invoke-interface {p0, v2, v3, v1}, Lsis/you/zta/zta/you/bio;->o(JLsis/you/zta/zta/you/igw;)V

    goto/16 :goto_5

    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v2, Lsis/you/zta/zta/you/sis;

    invoke-direct {v2}, Lsis/you/zta/zta/you/sis;-><init>()V

    invoke-virtual {v2, p2}, Lsis/you/zta/zta/you/sis;->you(Landroid/os/HwParcel;)V

    invoke-interface {p0, v2}, Lsis/you/zta/zta/you/bio;->C(Lsis/you/zta/zta/you/sis;)V

    :goto_2
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    goto/16 :goto_4

    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lsis/you/zta/zta/you/bio$you$sis;

    invoke-direct {v3, p0, p3}, Lsis/you/zta/zta/you/bio$you$sis;-><init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v2, v1, v3}, Lsis/you/zta/zta/zta/sis;->r(ILjava/lang/String;Lsis/you/zta/zta/zta/sis$sis;)V

    goto/16 :goto_5

    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    move-result v7

    new-instance v8, Lsis/you/zta/zta/you/bio$you$you;

    invoke-direct {v8, p0, p3}, Lsis/you/zta/zta/you/bio$you$you;-><init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    invoke-interface/range {v0 .. v7}, Lsis/you/zta/zta/zta/sis;->O(ZBBZLjava/util/ArrayList;BLsis/you/zta/zta/zta/sis$rtg;)V

    goto :goto_5

    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lsis/you/zta/zta/zta/tsu;->zta(Landroid/os/IHwBinder;)Lsis/you/zta/zta/zta/tsu;

    move-result-object v1

    invoke-interface {p0, v2, v3, v1}, Lsis/you/zta/zta/zta/sis;->lqr(JLsis/you/zta/zta/zta/tsu;)V

    goto :goto_5

    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lsis/you/zta/zta/zta/tsu;->zta(Landroid/os/IHwBinder;)Lsis/you/zta/zta/zta/tsu;

    move-result-object v1

    invoke-interface {p0, v1}, Lsis/you/zta/zta/zta/sis;->vju(Lsis/you/zta/zta/zta/tsu;)V

    goto :goto_5

    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lsis/you/zta/zta/you/bio$you$zta;

    invoke-direct {v3, p0, p3}, Lsis/you/zta/zta/you/bio$you$zta;-><init>(Lsis/you/zta/zta/you/bio$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v2, v1, v3}, Lsis/you/zta/zta/zta/sis;->f(ILjava/util/ArrayList;Lsis/you/zta/zta/zta/sis$tsu;)V

    goto :goto_5

    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lsis/you/zta/zta/zta/sis;->irq(ILjava/util/ArrayList;)I

    move-result v0

    :goto_3
    invoke-virtual {p3, v8}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    :goto_4
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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

    const-string v0, "vendor.pixelworks.hardware.display@1.1::IIris"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final rtg()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.pixelworks.hardware.display@1.1::IIris"

    const-string v1, "vendor.pixelworks.hardware.display@1.0::IIris"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

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

    invoke-virtual {p0}, Lsis/you/zta/zta/you/bio$you;->cno()Ljava/lang/String;

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
