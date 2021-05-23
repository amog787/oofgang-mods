.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnapshotType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

.field private static final synthetic tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-string v1, "END"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-string v1, "CALCULATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->tsu:[Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    return-object v0
.end method
