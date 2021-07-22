.class public Lcom/oneplus/settings/utils/OPDeviceHelper;
.super Ljava/lang/Object;
.source "OPDeviceHelper.java"


# static fields
.field public static final DEFAULT_AT_LEAST_OP8_ICON_PACK_CANDIDATE_LIST:[Ljava/lang/CharSequence;

.field public static final DEFAULT_ICON_PACK_CANDIDATE_LIST:[Ljava/lang/CharSequence;

.field public static final NOT_DEFAULT_ICON_PACK_ORDER_LIST:[Ljava/lang/CharSequence;

.field private static sDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "com.oneplus.iconpack.oneplush2"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const-string v5, "com.oneplus.iconpack.onepluso2"

    aput-object v5, v1, v4

    const/4 v6, 0x2

    const-string v7, "com.oneplus.iconpack.oneplus"

    aput-object v7, v1, v6

    const/4 v8, 0x3

    const-string v9, "com.oneplus.iconpack.h2default"

    aput-object v9, v1, v8

    const/4 v10, 0x4

    const-string v11, "com.oneplus.iconpack.o2default"

    aput-object v11, v1, v10

    .line 301
    sput-object v1, Lcom/oneplus/settings/utils/OPDeviceHelper;->DEFAULT_AT_LEAST_OP8_ICON_PACK_CANDIDATE_LIST:[Ljava/lang/CharSequence;

    new-array v1, v0, [Ljava/lang/CharSequence;

    aput-object v7, v1, v2

    aput-object v5, v1, v4

    aput-object v3, v1, v6

    aput-object v11, v1, v8

    aput-object v9, v1, v10

    .line 309
    sput-object v1, Lcom/oneplus/settings/utils/OPDeviceHelper;->DEFAULT_ICON_PACK_CANDIDATE_LIST:[Ljava/lang/CharSequence;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/CharSequence;

    const-string v3, "com.oneplus.iconpack.mclaren"

    aput-object v3, v1, v2

    const-string v2, "com.oneplus.iconpack.diwali"

    aput-object v2, v1, v4

    const-string v2, "com.oneplus.iconpack.circle"

    aput-object v2, v1, v6

    const-string v2, "com.oneplus.iconpack.square"

    aput-object v2, v1, v8

    const-string v2, "com.oneplus.iconpack.dives"

    aput-object v2, v1, v10

    const-string v2, "com.oneplus.iconpack.rifon"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "com.oneplus.iconpack.h2light"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "com.oneplus.iconpack.h2folio"

    aput-object v2, v1, v0

    .line 317
    sput-object v1, Lcom/oneplus/settings/utils/OPDeviceHelper;->NOT_DEFAULT_ICON_PACK_ORDER_LIST:[Ljava/lang/CharSequence;

    return-void
.end method

.method public static getDeviceTag()Ljava/lang/String;
    .locals 24

    const-string v1, "18865"

    const-string v2, "18857"

    const-string v3, "18831"

    const-string v4, "18827"

    const-string v5, "18825"

    const-string v6, "18821"

    const-string v7, "18811"

    const-string v8, "18801"

    const-string v9, "17819"

    const-string v10, "17801"

    const-string v11, "16859"

    const-string v12, "15811"

    const-string v13, "15801"

    .line 59
    const-class v14, Ljava/lang/String;

    const-string v15, "get"

    const-string v16, "android.os.SystemProperties"

    move-object/from16 v17, v13

    const-string v13, "19811"

    move-object/from16 v18, v12

    const-string v12, "DeviceHelper"

    sget-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v19, -0x1

    move-object/from16 v20, v11

    const/16 v21, 0x0

    const/4 v11, 0x1

    .line 61
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v22, v10

    :try_start_1
    new-array v10, v11, [Ljava/lang/Class;

    aput-object v14, v10, v21

    .line 62
    invoke-virtual {v0, v15, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v10, v11, [Ljava/lang/Object;

    const-string v23, "ro.product.device"

    aput-object v23, v10, v21

    const/4 v11, 0x0

    .line 63
    invoke-virtual {v0, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDeviceTag: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "OnePlus7"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "OnePlus6"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "OnePlus5"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "OnePlus3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "OnePlus2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "SS9863TUSG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    goto/16 :goto_1

    :sswitch_6
    const-string v10, "OnePlus6TSingle"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v10, "OnePlus7TProNR"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_8
    const-string v10, "OnePlus7ProNR"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v10, "OnePlus7ProTMO"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_a
    const-string v10, "OnePlus"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_b
    const-string v10, "P8811"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v10, "P8801"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v10, "P7819"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v10, "P7801"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_f
    const-string v10, "SUM"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_10
    const-string v10, "OnePlus8VZW"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_11
    const-string v10, "OnePlus8TMO"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_12
    const-string v10, "OnePlus7Pro"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v10, "OP7ProNRSpr"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_14
    const-string v10, "SS9863TUS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_15
    const-string v10, "ONEPLUS"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v0, v21

    goto/16 :goto_1

    :sswitch_16
    const-string v10, "OnePlus7TTMO"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_17
    const-string v10, "OnePlus7TPro"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_18
    const-string v10, "OnePlus7T"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_19
    const-string v10, "OnePlus6T"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_1a
    const-string v10, "OnePlus5T"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_1b
    const-string v10, "OnePlus3T"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_1c
    const-string v10, "SS9867"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_1d
    const-string v10, "SS9863"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x25

    goto/16 :goto_1

    :sswitch_1e
    const-string v10, "SS9861"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_1f
    const-string v10, "SS9855"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string v10, "SS9821"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_21
    const-string v10, "SS9811"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_22
    const-string v10, "SS9801"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_23
    const-string v10, "SS8865"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_24
    const-string v10, "SS8857"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_25
    const-string v10, "SS8831"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_26
    const-string v10, "SS8827"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_27
    const-string v10, "SS8825"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_28
    const-string v10, "SS8821"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v0, v19

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "19863"

    .line 156
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_1
    const-string v0, "19861"

    .line 150
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_2
    const-string v0, "19867"

    .line 146
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_3
    const-string v0, "19855"

    .line 142
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_4
    const-string v0, "19821"

    .line 138
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    .line 135
    :pswitch_5
    sput-object v13, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_6
    const-string v0, "19801"

    .line 132
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    .line 128
    :pswitch_7
    sput-object v1, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    .line 124
    :pswitch_8
    sput-object v2, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    .line 120
    :pswitch_9
    sput-object v3, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    .line 116
    :pswitch_a
    sput-object v4, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto/16 :goto_4

    .line 112
    :pswitch_b
    sput-object v5, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 108
    :pswitch_c
    sput-object v6, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 104
    :pswitch_d
    sput-object v7, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 100
    :pswitch_e
    sput-object v8, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 96
    :pswitch_f
    sput-object v9, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 92
    :pswitch_10
    sput-object v22, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 88
    :pswitch_11
    sput-object v20, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 85
    :pswitch_12
    sput-object v18, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 82
    :pswitch_13
    sput-object v17, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    :pswitch_14
    const-string v0, "15055"

    .line 79
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    :pswitch_15
    const-string v0, "14049"

    .line 75
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    const-string v0, "14001"

    .line 72
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    goto :goto_4

    .line 159
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getDeviceTag] unexpected device tag "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 160
    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v22, v10

    .line 164
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[getDeviceTag] unexpected exception with device "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    :goto_4
    sget-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 170
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Class;

    aput-object v14, v11, v21

    .line 171
    invoke-virtual {v0, v15, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v11, v10, [Ljava/lang/Object;

    const-string v10, "ro.boot.project_codename"

    aput-object v10, v11, v21

    const/4 v10, 0x0

    .line 172
    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sput-object v11, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 173
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    const/4 v10, 0x1

    goto :goto_6

    :cond_3
    :goto_5
    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const-string v14, "ro.boot.project_name"

    aput-object v14, v11, v21

    const/4 v14, 0x0

    .line 174
    invoke-virtual {v0, v14, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    const-string v0, "get device code from name"

    .line 175
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_6
    sget-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    .line 182
    :cond_4
    sget-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    goto/16 :goto_7

    :sswitch_29
    const-string v1, "19869"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x1b

    goto/16 :goto_7

    :sswitch_2a
    const-string v1, "19867"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x1a

    goto/16 :goto_7

    :sswitch_2b
    const-string v1, "19863"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x19

    goto/16 :goto_7

    :sswitch_2c
    const-string v1, "19861"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x18

    goto/16 :goto_7

    :sswitch_2d
    const-string v1, "19855"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x17

    goto/16 :goto_7

    :sswitch_2e
    const-string v1, "19841"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x16

    goto/16 :goto_7

    :sswitch_2f
    const-string v1, "19839"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x15

    goto/16 :goto_7

    :sswitch_30
    const-string v1, "19837"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x14

    goto/16 :goto_7

    :sswitch_31
    const-string v1, "19835"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x13

    goto/16 :goto_7

    :sswitch_32
    const-string v1, "19830"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x12

    goto/16 :goto_7

    :sswitch_33
    const-string v1, "19823"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x11

    goto/16 :goto_7

    :sswitch_34
    const-string v1, "19821"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x10

    goto/16 :goto_7

    :sswitch_35
    const-string v1, "19813"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0xf

    goto/16 :goto_7

    :sswitch_36
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0xe

    goto/16 :goto_7

    :sswitch_37
    const-string v1, "19801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0xd

    goto/16 :goto_7

    :sswitch_38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0xc

    goto/16 :goto_7

    :sswitch_39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0xb

    goto/16 :goto_7

    :sswitch_3a
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0xa

    goto/16 :goto_7

    :sswitch_3b
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x9

    goto/16 :goto_7

    :sswitch_3c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x8

    goto :goto_7

    :sswitch_3d
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x7

    goto :goto_7

    :sswitch_3e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x6

    goto :goto_7

    :sswitch_3f
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x5

    goto :goto_7

    :sswitch_40
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x4

    goto :goto_7

    :sswitch_41
    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x3

    goto :goto_7

    :sswitch_42
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x2

    goto :goto_7

    :sswitch_43
    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v19, v10

    goto :goto_7

    :sswitch_44
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move/from16 v19, v21

    goto :goto_7

    :sswitch_45
    const-string v1, "avicii"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v19, 0x1c

    :cond_5
    :goto_7
    packed-switch v19, :pswitch_data_1

    goto :goto_8

    .line 212
    :pswitch_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDeviceTag] get project name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 216
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDeviceTag] unexpected project name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    sput-object v13, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    const-string v1, "[getProjectName] unexpected exception"

    .line 221
    invoke-static {v12, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    sput-object v13, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    .line 228
    :cond_6
    :goto_9
    sget-object v0, Lcom/oneplus/settings/utils/OPDeviceHelper;->sDevice:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6db1d861 -> :sswitch_28
        -0x6db1d85d -> :sswitch_27
        -0x6db1d85b -> :sswitch_26
        -0x6db1d842 -> :sswitch_25
        -0x6db1d7fe -> :sswitch_24
        -0x6db1d7e1 -> :sswitch_23
        -0x6db16440 -> :sswitch_22
        -0x6db16421 -> :sswitch_21
        -0x6db16402 -> :sswitch_20
        -0x6db163a1 -> :sswitch_1f
        -0x6db16386 -> :sswitch_1e
        -0x6db16384 -> :sswitch_1d
        -0x6db16380 -> :sswitch_1c
        -0x2e9e947f -> :sswitch_1b
        -0x2e9e9441 -> :sswitch_1a
        -0x2e9e9422 -> :sswitch_19
        -0x2e9e9403 -> :sswitch_18
        -0x27e90e90 -> :sswitch_17
        -0x27e90427 -> :sswitch_16
        -0x23e7db20 -> :sswitch_15
        -0x15ea780a -> :sswitch_14
        -0x150598a6 -> :sswitch_13
        -0x149a00a -> :sswitch_12
        -0x1492142 -> :sswitch_11
        -0x1491825 -> :sswitch_10
        0x1422b -> :sswitch_f
        0x48130f2 -> :sswitch_e
        0x4813119 -> :sswitch_d
        0x481a551 -> :sswitch_c
        0x481a570 -> :sswitch_b
        0x1476a500 -> :sswitch_a
        0x292a5940 -> :sswitch_9
        0x2a9e443a -> :sswitch_8
        0x2e205f34 -> :sswitch_7
        0x32a9fdc6 -> :sswitch_6
        0x589b7711 -> :sswitch_5
        0x7a5dfb32 -> :sswitch_4
        0x7a5dfb33 -> :sswitch_3
        0x7a5dfb35 -> :sswitch_2
        0x7a5dfb36 -> :sswitch_1
        0x7a5dfb37 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x53c9da91 -> :sswitch_45
        0x2cb6f95 -> :sswitch_44
        0x2cb6fb4 -> :sswitch_43
        0x2cbe497 -> :sswitch_42
        0x2cc5853 -> :sswitch_41
        0x2cc587a -> :sswitch_40
        0x2ccccb2 -> :sswitch_3f
        0x2ccccd1 -> :sswitch_3e
        0x2ccccf0 -> :sswitch_3d
        0x2ccccf4 -> :sswitch_3c
        0x2ccccf6 -> :sswitch_3b
        0x2cccd0f -> :sswitch_3a
        0x2cccd53 -> :sswitch_39
        0x2cccd70 -> :sswitch_38
        0x2cd4111 -> :sswitch_37
        0x2cd4130 -> :sswitch_36
        0x2cd4132 -> :sswitch_35
        0x2cd414f -> :sswitch_34
        0x2cd4151 -> :sswitch_33
        0x2cd416d -> :sswitch_32
        0x2cd4172 -> :sswitch_31
        0x2cd4174 -> :sswitch_30
        0x2cd4176 -> :sswitch_2f
        0x2cd418d -> :sswitch_2e
        0x2cd41b0 -> :sswitch_2d
        0x2cd41cb -> :sswitch_2c
        0x2cd41cd -> :sswitch_2b
        0x2cd41d1 -> :sswitch_2a
        0x2cd41d3 -> :sswitch_29
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public static isAtLeastOP8DeviceVersion()Z
    .locals 6

    .line 255
    invoke-static {}, Lcom/oneplus/settings/utils/OPDeviceHelper;->getDeviceTag()Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "DeviceHelper"

    if-eqz v1, :cond_0

    const-string v0, "isAtLeastOP8DeviceVersion, empty string"

    .line 257
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, -0x1

    .line 262
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "19863"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "19861"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "19851"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "19850"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "19833"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "19831"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "19830"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "19801"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "18865"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "18857"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "18831"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "18827"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "18825"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "18821"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "18811"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_f
    const-string v4, "18801"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_10
    const-string v4, "17819"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_11
    const-string v4, "17801"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_12
    const-string v4, "16859"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_13
    const-string v4, "15811"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_14
    const-string v4, "15801"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_15
    const-string v4, "15055"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_16
    const-string v4, "14049"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v5

    goto :goto_0

    :sswitch_17
    const-string v4, "14001"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    const-string v4, "isAtLeastOP8DeviceVersion: this= "

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 287
    :pswitch_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , is at least OP8: false"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 290
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , is at least OP8: true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return v5

    :catch_0
    move-exception v0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAtLeastOP8DeviceVersion: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v2

    :sswitch_data_0
    .sparse-switch
        0x2cadd2e -> :sswitch_17
        0x2caddb2 -> :sswitch_16
        0x2cb522c -> :sswitch_15
        0x2cb6f95 -> :sswitch_14
        0x2cb6fb4 -> :sswitch_13
        0x2cbe497 -> :sswitch_12
        0x2cc5853 -> :sswitch_11
        0x2cc587a -> :sswitch_10
        0x2ccccb2 -> :sswitch_f
        0x2ccccd1 -> :sswitch_e
        0x2ccccf0 -> :sswitch_d
        0x2ccccf4 -> :sswitch_c
        0x2ccccf6 -> :sswitch_b
        0x2cccd0f -> :sswitch_a
        0x2cccd53 -> :sswitch_9
        0x2cccd70 -> :sswitch_8
        0x2cd4111 -> :sswitch_7
        0x2cd416d -> :sswitch_6
        0x2cd416e -> :sswitch_5
        0x2cd4170 -> :sswitch_4
        0x2cd41ab -> :sswitch_3
        0x2cd41ac -> :sswitch_2
        0x2cd41cb -> :sswitch_1
        0x2cd41cd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
