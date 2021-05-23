.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerQxdmReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

.field private static final synthetic tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    const-string v1, "NOT_AVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    const-string v1, "TELE_ABN_TRIGGER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    const-string v1, "MODEM_ABN_TRIGGER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    return-object v0
.end method
