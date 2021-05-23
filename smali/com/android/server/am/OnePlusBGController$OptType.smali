.class public final enum Lcom/android/server/am/OnePlusBGController$OptType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$OptType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/am/OnePlusBGController$OptType;

.field private static final synthetic tsu:[Lcom/android/server/am/OnePlusBGController$OptType;

.field public static final enum you:Lcom/android/server/am/OnePlusBGController$OptType;

.field public static final enum zta:Lcom/android/server/am/OnePlusBGController$OptType;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$OptType;

    const-string v1, "S"

    const/4 v2, 0x0

    const-string v3, "SMART"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController$OptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$OptType;->zta:Lcom/android/server/am/OnePlusBGController$OptType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$OptType;

    const-string v1, "N"

    const/4 v3, 0x1

    const-string v4, "FORCE_NOT_OPT"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/OnePlusBGController$OptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$OptType;->you:Lcom/android/server/am/OnePlusBGController$OptType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$OptType;

    const-string v1, "O"

    const/4 v4, 0x2

    const-string v5, "FORCE_OPT"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/OnePlusBGController$OptType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$OptType;->sis:Lcom/android/server/am/OnePlusBGController$OptType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/am/OnePlusBGController$OptType;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$OptType;->zta:Lcom/android/server/am/OnePlusBGController$OptType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/am/OnePlusBGController$OptType;->you:Lcom/android/server/am/OnePlusBGController$OptType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/am/OnePlusBGController$OptType;->tsu:[Lcom/android/server/am/OnePlusBGController$OptType;

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

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$OptType;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$OptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$OptType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$OptType;->tsu:[Lcom/android/server/am/OnePlusBGController$OptType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$OptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$OptType;

    return-object v0
.end method

.method public static zta(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusBGController$OptType;->values()[Lcom/android/server/am/OnePlusBGController$OptType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController$OptType;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
