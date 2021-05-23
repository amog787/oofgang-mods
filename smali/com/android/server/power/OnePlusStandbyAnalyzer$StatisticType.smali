.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StatisticType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

.field private static final synthetic tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    const-string v1, "SIPPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    const-string v1, "WAKELOCK_WAKEUP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    const-string v1, "KWL_WR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    return-object v0
.end method
