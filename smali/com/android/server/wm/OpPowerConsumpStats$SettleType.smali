.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$SettleType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$SettleType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

.field private static final synthetic tsu:[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

.field public static final enum you:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

.field public static final enum zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const-string v1, "UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const-string v1, "CALCULATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->you:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const-string v1, "GAPTOUCHEVT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    sget-object v5, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->you:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->tsu:[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$SettleType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->tsu:[Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    return-object v0
.end method
