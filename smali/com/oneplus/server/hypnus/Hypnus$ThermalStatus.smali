.class public final enum Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/hypnus/Hypnus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThermalStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cno:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field private static final synthetic kth:[Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field public static final enum rtg:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field public static final enum sis:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field public static final enum ssp:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field public static final enum tsu:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field public static final enum you:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

.field public static final enum zta:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->zta:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "LIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->you:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "MODERATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->sis:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "SEVERE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->tsu:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "CRITICAL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->rtg:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "EMERGENCY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->ssp:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    new-instance v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const-string v1, "SHUTDOWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->cno:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    sget-object v9, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->zta:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    aput-object v9, v1, v2

    sget-object v2, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->you:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->sis:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    aput-object v2, v1, v4

    sget-object v2, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->tsu:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->rtg:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->ssp:Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->kth:[Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;
    .locals 1

    const-class v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;
    .locals 1

    sget-object v0, Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->kth:[Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    invoke-virtual {v0}, [Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;

    return-object v0
.end method
