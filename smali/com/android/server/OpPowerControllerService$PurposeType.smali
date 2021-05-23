.class public final enum Lcom/android/server/OpPowerControllerService$PurposeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurposeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OpPowerControllerService$PurposeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic sis:[Lcom/android/server/OpPowerControllerService$PurposeType;

.field public static final enum you:Lcom/android/server/OpPowerControllerService$PurposeType;

.field public static final enum zta:Lcom/android/server/OpPowerControllerService$PurposeType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/OpPowerControllerService$PurposeType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OpPowerControllerService$PurposeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PurposeType;->zta:Lcom/android/server/OpPowerControllerService$PurposeType;

    new-instance v0, Lcom/android/server/OpPowerControllerService$PurposeType;

    const-string v1, "DEBUG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OpPowerControllerService$PurposeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OpPowerControllerService$PurposeType;->you:Lcom/android/server/OpPowerControllerService$PurposeType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/OpPowerControllerService$PurposeType;

    sget-object v4, Lcom/android/server/OpPowerControllerService$PurposeType;->zta:Lcom/android/server/OpPowerControllerService$PurposeType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/OpPowerControllerService$PurposeType;->sis:[Lcom/android/server/OpPowerControllerService$PurposeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OpPowerControllerService$PurposeType;
    .locals 1

    const-class v0, Lcom/android/server/OpPowerControllerService$PurposeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService$PurposeType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/OpPowerControllerService$PurposeType;
    .locals 1

    sget-object v0, Lcom/android/server/OpPowerControllerService$PurposeType;->sis:[Lcom/android/server/OpPowerControllerService$PurposeType;

    invoke-virtual {v0}, [Lcom/android/server/OpPowerControllerService$PurposeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OpPowerControllerService$PurposeType;

    return-object v0
.end method
