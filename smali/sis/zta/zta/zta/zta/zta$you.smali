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
        0x60t
        0xat
        -0x60t
        -0x4t
        -0xdt
        -0x47t
        -0x55t
        -0x51t
        -0x37t
        0x6t
        0x2t
        0xct
        -0x75t
        -0x17t
        -0xat
        -0x29t
        -0xat
        -0x64t
        -0x3et
        0x45t
        -0x10t
        -0x41t
        -0x4at
        -0x49t
        -0x5ft
        0x6ft
        -0x4ft
        -0x6ft
        0xet
        -0x65t
        0x52t
        -0x2at
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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v13, p3

    const-string v2, "vendor.oneplus.engnative.engineer@1.0::IEngineer"

    const/4 v14, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v2, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_7

    :sswitch_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->you()V

    goto/16 :goto_7

    :sswitch_1
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->tsu()Lzta/zta/zta/zta/zta;

    move-result-object v0

    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, v13}, Lzta/zta/zta/zta/zta;->rtg(Landroid/os/HwParcel;)V

    goto/16 :goto_6

    :sswitch_2
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->ssp()V

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->wtn()V

    goto/16 :goto_7

    :sswitch_4
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->bio()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v14}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v14, v2, :cond_1

    mul-int/lit8 v4, v14, 0x20

    int-to-long v4, v4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    if-eqz v6, :cond_0

    array-length v7, v6

    const/16 v8, 0x20

    if-ne v7, v8, :cond_0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {v13, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    goto/16 :goto_6

    :sswitch_5
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->cno()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lsis/zta/zta/zta/zta/zta$you;->gck(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    :goto_1
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    goto/16 :goto_6

    :sswitch_7
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta$you;->rtg()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->i0()I

    move-result v0

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->s0(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeInt16Vector(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :pswitch_2
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-interface/range {v0 .. v9}, Lsis/zta/zta/zta/zta/zta;->D(IIJJIII)I

    move-result v0

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v11

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    invoke-interface/range {v0 .. v10}, Lsis/zta/zta/zta/zta/zta;->Z(IIJJIIIZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    invoke-interface/range {v0 .. v7}, Lsis/zta/zta/zta/zta/zta;->L(IIJJI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v15

    invoke-interface/range {v0 .. v12}, Lsis/zta/zta/zta/zta/zta;->hmo(IIJJIZIIII)I

    move-result v0

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-interface/range {v0 .. v9}, Lsis/zta/zta/zta/zta/zta;->qeg(IIJJIZI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v3, v4, v1}, Lsis/zta/zta/zta/zta/zta;->b0(IJI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-interface/range {v0 .. v7}, Lsis/zta/zta/zta/zta/zta;->C(IJIZII)I

    move-result v0

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lsis/zta/zta/zta/zta/zta;->F(IJIZI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lsis/zta/zta/zta/zta/zta;->z(IJJI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move v7, v8

    move v8, v9

    invoke-interface/range {v0 .. v8}, Lsis/zta/zta/zta/zta/zta;->U(IJJIZI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v8

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    move v7, v8

    invoke-interface/range {v0 .. v7}, Lsis/zta/zta/zta/zta/zta;->c(IJJIZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    invoke-interface/range {v0 .. v7}, Lsis/zta/zta/zta/zta/zta;->f(IIJJI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v15

    invoke-interface/range {v0 .. v12}, Lsis/zta/zta/zta/zta/zta;->x(IIJJIZIIII)I

    move-result v0

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    move-object/from16 v0, p0

    move v1, v2

    move v2, v3

    move-wide v3, v4

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-interface/range {v0 .. v9}, Lsis/zta/zta/zta/zta/zta;->h0(IIJJIZI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v3, v4, v1}, Lsis/zta/zta/zta/zta/zta;->n(IJI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lsis/zta/zta/zta/zta/zta;->b(IJIZI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/zta/zta/zta/zta/zta;->E(IJIZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_13
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v3, v4, v1}, Lsis/zta/zta/zta/zta/zta;->V(IJI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_14
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-interface/range {v0 .. v6}, Lsis/zta/zta/zta/zta/zta;->s(IJIZI)I

    move-result v0

    goto/16 :goto_3

    :pswitch_15
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object/from16 v0, p0

    move v1, v2

    move-wide v2, v3

    move v4, v5

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/zta/zta/zta/zta/zta;->ivd(IJIZ)I

    move-result v0

    goto/16 :goto_3

    :pswitch_16
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->M(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_17
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->i(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_18
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->X(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeInt64Vector(Ljava/util/ArrayList;)V

    goto/16 :goto_6

    :pswitch_19
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->P(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_1a
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->cgv(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_1b
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/zta/zta/zta/zta/zta;->w(Ljava/lang/String;IZILjava/util/ArrayList;)I

    move-result v0

    goto/16 :goto_3

    :pswitch_1c
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    new-instance v4, Lsis/zta/zta/zta/zta/zta$you$rtg;

    invoke-direct {v4, v0, v13}, Lsis/zta/zta/zta/zta/zta$you$rtg;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {v0, v2, v3, v1, v4}, Lsis/zta/zta/zta/zta/zta;->bud(Ljava/lang/String;IILsis/zta/zta/zta/zta/zta$cno;)V

    goto/16 :goto_7

    :pswitch_1d
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lsis/zta/zta/zta/zta/zta;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    goto/16 :goto_5

    :pswitch_1e
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lsis/zta/zta/zta/zta/zta;->R(II)I

    move-result v0

    goto/16 :goto_3

    :pswitch_1f
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lsis/zta/zta/zta/zta/zta;->K(III)I

    move-result v0

    goto/16 :goto_3

    :pswitch_20
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v1, Lsis/zta/zta/zta/zta/zta$you$tsu;

    invoke-direct {v1, v0, v13}, Lsis/zta/zta/zta/zta/zta$you$tsu;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->k0(Lsis/zta/zta/zta/zta/zta$ssp;)V

    goto/16 :goto_7

    :pswitch_21
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v1, Lsis/zta/zta/zta/zta/zta$you$sis;

    invoke-direct {v1, v0, v13}, Lsis/zta/zta/zta/zta/zta$you$sis;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->ear(Lsis/zta/zta/zta/zta/zta$rtg;)V

    goto/16 :goto_7

    :pswitch_22
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->T()I

    move-result v0

    goto/16 :goto_3

    :pswitch_23
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->vdb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_24
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v1, Lsis/zta/zta/zta/zta/zta$you$you;

    invoke-direct {v1, v0, v13}, Lsis/zta/zta/zta/zta/zta$you$you;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->m0(Lsis/zta/zta/zta/zta/zta$tsu;)V

    goto/16 :goto_7

    :pswitch_25
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v1, Lsis/zta/zta/zta/zta/zta$you$zta;

    invoke-direct {v1, v0, v13}, Lsis/zta/zta/zta/zta/zta$you$zta;-><init>(Lsis/zta/zta/zta/zta/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->bvj(Lsis/zta/zta/zta/zta/zta$sis;)V

    goto/16 :goto_7

    :pswitch_26
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->v()I

    move-result v0

    goto/16 :goto_3

    :pswitch_27
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->ugm(I)I

    move-result v0

    goto/16 :goto_3

    :pswitch_28
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->cjf(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_29
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lsis/zta/zta/zta/zta/zta;->saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_5

    :pswitch_2a
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->Q(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_5

    :pswitch_2b
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->fto()Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_4

    :pswitch_2c
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v6

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-interface/range {v0 .. v5}, Lsis/zta/zta/zta/zta/zta;->N(Ljava/lang/String;Ljava/util/ArrayList;IIZ)I

    move-result v0

    goto :goto_3

    :pswitch_2d
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->resetProductLineTestResult()Z

    move-result v0

    goto/16 :goto_5

    :pswitch_2e
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lsis/zta/zta/zta/zta/zta;->setProductLineTestResult(II)Z

    move-result v0

    goto :goto_5

    :pswitch_2f
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->getProductLineTestResult()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    :pswitch_30
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lsis/zta/zta/zta/zta/zta;->lqr(IILjava/util/ArrayList;)I

    move-result v0

    :goto_3
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeInt32(I)V

    goto :goto_6

    :pswitch_31
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v1}, Lsis/zta/zta/zta/zta/zta;->getBadBatteryConfig(II)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4

    :pswitch_32
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->h(Z)Z

    move-result v0

    goto :goto_5

    :pswitch_33
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface/range {p0 .. p0}, Lsis/zta/zta/zta/zta/zta;->G()Z

    move-result v0

    goto :goto_5

    :pswitch_34
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v1}, Lsis/zta/zta/zta/zta/zta;->readEngineerData(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_4
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeInt8Vector(Ljava/util/ArrayList;)V

    goto :goto_6

    :pswitch_35
    invoke-virtual {v1, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    invoke-interface {v0, v2, v3, v1}, Lsis/zta/zta/zta/zta/zta;->u(ILjava/util/ArrayList;I)Z

    move-result v0

    :goto_5
    invoke-virtual {v13, v14}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v13, v0}, Landroid/os/HwParcel;->writeBool(Z)V

    :goto_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
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

.method public t0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

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
