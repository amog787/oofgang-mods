.class public final enum Lcom/android/server/am/OnePlusBGController$RomType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBGController$RomType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/am/OnePlusBGController$RomType;

.field private static final synthetic tsu:[Lcom/android/server/am/OnePlusBGController$RomType;

.field public static final enum you:Lcom/android/server/am/OnePlusBGController$RomType;

.field public static final enum zta:Lcom/android/server/am/OnePlusBGController$RomType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBGController$RomType;

    const-string v1, "ALPHA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController$RomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$RomType;->zta:Lcom/android/server/am/OnePlusBGController$RomType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$RomType;

    const-string v1, "BETA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/OnePlusBGController$RomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$RomType;->you:Lcom/android/server/am/OnePlusBGController$RomType;

    new-instance v0, Lcom/android/server/am/OnePlusBGController$RomType;

    const-string v1, "GENERAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/OnePlusBGController$RomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController$RomType;->sis:Lcom/android/server/am/OnePlusBGController$RomType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/am/OnePlusBGController$RomType;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$RomType;->zta:Lcom/android/server/am/OnePlusBGController$RomType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/am/OnePlusBGController$RomType;->you:Lcom/android/server/am/OnePlusBGController$RomType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/am/OnePlusBGController$RomType;->tsu:[Lcom/android/server/am/OnePlusBGController$RomType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBGController$RomType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$RomType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBGController$RomType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController$RomType;->tsu:[Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBGController$RomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBGController$RomType;

    return-object v0
.end method
