.class public final enum Lcom/google/android/material/indicator/animation/type/AnimationType;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/indicator/animation/type/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/indicator/animation/type/AnimationType;

.field public static final enum NONE:Lcom/google/android/material/indicator/animation/type/AnimationType;

.field public static final enum WORM:Lcom/google/android/material/indicator/animation/type/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3
    new-instance v0, Lcom/google/android/material/indicator/animation/type/AnimationType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/indicator/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/indicator/animation/type/AnimationType;->NONE:Lcom/google/android/material/indicator/animation/type/AnimationType;

    new-instance v0, Lcom/google/android/material/indicator/animation/type/AnimationType;

    const-string v1, "WORM"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/indicator/animation/type/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/indicator/animation/type/AnimationType;->WORM:Lcom/google/android/material/indicator/animation/type/AnimationType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/material/indicator/animation/type/AnimationType;

    sget-object v4, Lcom/google/android/material/indicator/animation/type/AnimationType;->NONE:Lcom/google/android/material/indicator/animation/type/AnimationType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/material/indicator/animation/type/AnimationType;->$VALUES:[Lcom/google/android/material/indicator/animation/type/AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/indicator/animation/type/AnimationType;
    .locals 1

    .line 3
    const-class v0, Lcom/google/android/material/indicator/animation/type/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/indicator/animation/type/AnimationType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/indicator/animation/type/AnimationType;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/material/indicator/animation/type/AnimationType;->$VALUES:[Lcom/google/android/material/indicator/animation/type/AnimationType;

    invoke-virtual {v0}, [Lcom/google/android/material/indicator/animation/type/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/indicator/animation/type/AnimationType;

    return-object v0
.end method
