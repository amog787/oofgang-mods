.class public final enum Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OpPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyLockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum cno:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field private static final synthetic kth:[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum rtg:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum sis:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum ssp:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum tsu:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum you:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

.field public static final enum zta:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->zta:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "POWER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->you:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "POWER_HOME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->sis:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "HOME"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->tsu:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "FOOT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->rtg:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "BACK_SWITCH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->ssp:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    new-instance v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const-string v1, "BASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->cno:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    sget-object v9, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->zta:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->you:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->sis:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->tsu:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->rtg:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->ssp:Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->kth:[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    .locals 1

    const-class v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    return-object p0
.end method

.method public static values()[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;
    .locals 1

    sget-object v0, Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->kth:[Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    invoke-virtual {v0}, [Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/policy/OpPhoneWindowManager$KeyLockMode;

    return-object v0
.end method
