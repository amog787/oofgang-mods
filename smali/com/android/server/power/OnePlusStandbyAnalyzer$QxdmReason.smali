.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QxdmReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

.field private static final synthetic ssp:[Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

.field public static final enum tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    const-string v1, "TELE_ABN_TRIGGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    const-string v1, "MODEM_ABN_TRIGGER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    const-string v1, "REACH_120SEC_TIMEOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    const-string v1, "VALID_STANDBY_PERIOD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    const-string v1, "INVALID_STANDBY_PERIOD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->ssp:[Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->ssp:[Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    return-object v0
.end method
