.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosisDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field private static final synthetic oif:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "VER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "SBHR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "EVDI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "DP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "AC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "CRI"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "MIN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "WLP"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "CRP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "KWLP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "WR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "SBP"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "SNP"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "UCP"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v1, "RPM"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v1, 0xf

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    sget-object v16, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->oif:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->oif:[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    return-object v0
.end method
