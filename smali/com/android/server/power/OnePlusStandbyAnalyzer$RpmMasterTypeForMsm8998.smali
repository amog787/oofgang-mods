.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RpmMasterTypeForMsm8998"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

.field private static final synthetic ssp:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

.field public static final enum tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    const-string v1, "MPSS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    const-string v1, "ADSP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    const-string v1, "SLPI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    const-string v1, "TZ"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    const-string v1, "SPSS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->ssp:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->ssp:[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;

    return-object v0
.end method
