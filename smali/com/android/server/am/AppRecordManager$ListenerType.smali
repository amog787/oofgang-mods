.class public final enum Lcom/android/server/am/AppRecordManager$ListenerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRecordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListenerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/AppRecordManager$ListenerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bio:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum cjf:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum cno:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum dma:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum ear:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum gck:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum igw:Lcom/android/server/am/AppRecordManager$ListenerType;

.field private static final synthetic ire:[Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum kth:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum obl:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum oif:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum sis:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum ssp:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum tsu:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum vdb:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum you:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum zgw:Lcom/android/server/am/AppRecordManager$ListenerType;

.field public static final enum zta:Lcom/android/server/am/AppRecordManager$ListenerType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "UNKNOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->zta:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "SENSOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->you:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "AUDIO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "VIDEO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->tsu:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "CAMERA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "FLASHLIGHT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ssp:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "VIBRATOR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->cno:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "GPS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "TRAFFIC"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "PROCSTATE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "UIDSTATE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "PSSSTATE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->gck:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "PREDCTIONSTATE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->dma:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "HIGHUSEDAPP"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "FREEZEAPP"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "PROCESSSTATE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "FRONTAPP"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "USERLOCK"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "HASNOCLEAR"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "BlUETOOTH"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "AUDIO_PID"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->vdb:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "VIDEO_PID"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->zgw:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "TRAFFICHIGH"

    const/16 v15, 0x16

    const/16 v14, 0x16

    invoke-direct {v0, v1, v15, v14}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->obl:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "FLOATWIN"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "PSENSOR"

    const/16 v14, 0x18

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->cjf:Lcom/android/server/am/AppRecordManager$ListenerType;

    new-instance v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    const-string v1, "FRONTACTIVITY"

    const/16 v14, 0x19

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/am/AppRecordManager$ListenerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v1, 0x1a

    new-array v1, v1, [Lcom/android/server/am/AppRecordManager$ListenerType;

    sget-object v14, Lcom/android/server/am/AppRecordManager$ListenerType;->zta:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->you:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->tsu:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->ssp:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->cno:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->gck:Lcom/android/server/am/AppRecordManager$ListenerType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->dma:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->vdb:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->zgw:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->obl:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/AppRecordManager$ListenerType;->cjf:Lcom/android/server/am/AppRecordManager$ListenerType;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->ire:[Lcom/android/server/am/AppRecordManager$ListenerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/AppRecordManager$ListenerType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/AppRecordManager$ListenerType;
    .locals 1

    const-class v0, Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/AppRecordManager$ListenerType;
    .locals 1

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ire:[Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-virtual {v0}, [Lcom/android/server/am/AppRecordManager$ListenerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object v0
.end method

.method public static you(I)Lcom/android/server/am/AppRecordManager$ListenerType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->zta:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->ear:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->cjf:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->oxb:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->obl:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->zgw:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->vdb:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->ugm:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->ibl:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->bvj:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->oif:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->qbh:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->ywr:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->dma:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->gck:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->igw:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->cno:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->ssp:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->rtg:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->tsu:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/android/server/am/AppRecordManager$ListenerType;->you:Lcom/android/server/am/AppRecordManager$ListenerType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
.end method


# virtual methods
.method public final zta()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/AppRecordManager$ListenerType;->value:I

    return p0
.end method
