.class public final enum Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Param"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic rtg:[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum sis:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum tsu:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum you:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

.field public static final enum zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const-string v1, "NOT_FROM_NAVBAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->you:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const-string v1, "FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->sis:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const-string v1, "FROM_NAVBAR_AND_HAS_NAVIGATIONBAR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->tsu:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    sget-object v6, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->zta:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v6, v1, v2

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->you:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->sis:Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->rtg:[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->rtg:[Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneButtonController$Param;

    return-object v0
.end method
