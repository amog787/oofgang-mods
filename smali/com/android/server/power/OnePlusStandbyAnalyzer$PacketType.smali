.class public final enum Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PacketType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic rtg:[Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

.field public static final enum sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

.field public static final enum tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

.field public static final enum you:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

.field public static final enum zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    const-string v1, "NETWORK_MOBILE_RX_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    const-string v1, "NETWORK_MOBILE_TX_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    const-string v1, "NETWORK_WIFI_RX_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    const-string v1, "NETWORK_WIFI_TX_DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->rtg:[Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;
    .locals 1

    const-class v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->rtg:[Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    invoke-virtual {v0}, [Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    return-object v0
.end method
