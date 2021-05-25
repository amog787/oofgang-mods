.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$PersistType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersistType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$PersistType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic sis:[Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

.field public static final enum you:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

.field public static final enum zta:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    const-string v1, "LOCAL_FOLDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    const-string v1, "HISTORY_FOLDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->sis:[Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$PersistType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$PersistType;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->sis:[Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    return-object v0
.end method
