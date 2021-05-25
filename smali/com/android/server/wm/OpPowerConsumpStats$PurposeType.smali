.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurposeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic rtg:[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum sis:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum tsu:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum you:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

.field public static final enum zta:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const-string v1, "FORCLEAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const-string v1, "DUMMY_START"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const-string v1, "DUMMY_STOP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->tsu:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->rtg:[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->rtg:[Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    return-object v0
.end method
