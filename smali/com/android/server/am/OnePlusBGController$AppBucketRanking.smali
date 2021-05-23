.class public final enum Lcom/android/server/am/OnePlusBGController$AppBucketRanking;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppBucketRanking"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$AppBucketRanking;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic rtg:[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum sis:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum tsu:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum you:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public static final enum zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;


# instance fields
.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "U"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const-string v1, "HIGH"

    const/4 v3, 0x1

    const-string v4, "H"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->you:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const-string v1, "GENERAL"

    const/4 v4, 0x2

    const-string v5, "G"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->sis:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const-string v1, "LOW"

    const/4 v5, 0x3

    const-string v6, "L"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->tsu:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    sget-object v6, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->you:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->sis:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->rtg:[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

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

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->mType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$AppBucketRanking;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->rtg:[Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->mType:Ljava/lang/String;

    return-object p0
.end method
