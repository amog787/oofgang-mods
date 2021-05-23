.class public final enum Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneLightsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

.field private static final synthetic tsu:[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

.field public static final enum you:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

.field public static final enum zta:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const-string v1, "ALLOW_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->zta:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const-string v1, "ZEN_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->you:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const-string v1, "BASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->sis:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    sget-object v5, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->zta:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->you:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->tsu:[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->tsu:[Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    return-object v0
.end method
