.class public final enum Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyguardStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic sis:[Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

.field public static final enum you:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

.field public static final enum zta:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    const-string v1, "UNLOCKED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->zta:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    const-string v1, "LOCKED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->you:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->zta:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->sis:[Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 1

    const-class v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->sis:[Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    invoke-virtual {v0}, [Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-object v0
.end method

.method public static zta(I)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 5

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->values()[Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
