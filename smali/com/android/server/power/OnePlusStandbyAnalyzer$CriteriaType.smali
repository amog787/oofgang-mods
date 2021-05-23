.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CriteriaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field private static final synthetic bvj:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "USERSPEACE_WAKELOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "USERSPEACE_WAKELOCK_MINOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "KERNELSPACE_WAKELOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "KERNELSPACE_WAKELOCK_MINOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "KERNEL_WAKEUP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "KERNEL_WAKEUP_MINOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "SINGAL_BAD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "SINGAL_BAD_MINOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "HIGH_UNACCOUNTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "HIGH_UNACCOUNTED_MINOR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "AVERAGE_CURRENT_EXCEED_FOR_MINOR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "RPM_TIME_SINCE_LAST_MODE_SEC"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "SLEEP_ACC_DURATION_DIFF_PERCENT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "SLPI_SLEEP_COUNT_DIFF"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "SIGNAL_NONE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const-string v1, "SIGNAL_NONE_MINOR"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const/16 v1, 0x10

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    sget-object v16, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bvj:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bvj:[Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    return-object v0
.end method
