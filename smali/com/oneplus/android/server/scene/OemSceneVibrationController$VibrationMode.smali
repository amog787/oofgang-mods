.class public final enum Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibrationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

.field private static final synthetic tsu:[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

.field public static final enum you:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

.field public static final enum zta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const-string v1, "ALLOW_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->zta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const-string v1, "ALLOW_WHITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->you:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const-string v1, "BASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->sis:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    sget-object v5, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->zta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->you:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->tsu:[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->tsu:[Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    return-object v0
.end method
