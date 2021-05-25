.class public final enum Lcom/android/server/OpPowerControllerService$PkgRestrictType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PkgRestrictType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OpPowerControllerService$PkgRestrictType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

.field private static final synthetic tsu:[Lcom/android/server/OpPowerControllerService$PkgRestrictType;

.field public static final enum you:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

.field public static final enum zta:Lcom/android/server/OpPowerControllerService$PkgRestrictType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const-string v1, "NA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OpPowerControllerService$PkgRestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->zta:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    new-instance v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const-string v1, "ENABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OpPowerControllerService$PkgRestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->you:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    new-instance v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const-string v1, "DISABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OpPowerControllerService$PkgRestrictType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->sis:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    sget-object v5, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->zta:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->you:Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->tsu:[Lcom/android/server/OpPowerControllerService$PkgRestrictType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OpPowerControllerService$PkgRestrictType;
    .locals 1

    const-class v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/OpPowerControllerService$PkgRestrictType;
    .locals 1

    sget-object v0, Lcom/android/server/OpPowerControllerService$PkgRestrictType;->tsu:[Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    invoke-virtual {v0}, [Lcom/android/server/OpPowerControllerService$PkgRestrictType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OpPowerControllerService$PkgRestrictType;

    return-object v0
.end method
