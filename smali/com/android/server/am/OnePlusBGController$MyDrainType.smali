.class public final enum Lcom/android/server/am/OnePlusBGController$MyDrainType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MyDrainType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$MyDrainType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bio:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum cno:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field private static final synthetic gck:[Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum igw:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum kth:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum rtg:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum sis:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum ssp:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum tsu:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum wtn:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum you:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public static final enum zta:Lcom/android/server/am/OnePlusBGController$MyDrainType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->zta:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "CPU"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->you:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "WAKELOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->sis:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "MOBILERADIO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->tsu:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "WIFI"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->rtg:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "BLUETOOTH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->ssp:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "GPS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->cno:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "SENSOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->kth:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "CAMERA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->bio:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "FLASHLIGHT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->igw:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const-string v1, "MEDIA"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/OnePlusBGController$MyDrainType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->wtn:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/android/server/am/OnePlusBGController$MyDrainType;

    sget-object v13, Lcom/android/server/am/OnePlusBGController$MyDrainType;->zta:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v13, v1, v2

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->you:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->sis:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->tsu:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->rtg:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->ssp:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->cno:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->kth:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->bio:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/am/OnePlusBGController$MyDrainType;->igw:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/android/server/am/OnePlusBGController$MyDrainType;->gck:[Lcom/android/server/am/OnePlusBGController$MyDrainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$MyDrainType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$MyDrainType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$MyDrainType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$MyDrainType;->gck:[Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$MyDrainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$MyDrainType;

    return-object v0
.end method
