.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MeasureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic sis:[Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    const-string v1, "LEVEL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    const-string v1, "CAPACITY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->sis:[Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->sis:[Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    return-object v0
.end method

.method public static zta(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    return-object p0
.end method
