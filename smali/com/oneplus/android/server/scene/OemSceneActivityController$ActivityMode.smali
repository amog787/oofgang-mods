.class public final enum Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum sis:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

.field private static final synthetic tsu:[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

.field public static final enum you:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

.field public static final enum zta:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const-string v1, "ALLOW_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->zta:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const-string v1, "ALLOW_WHITE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->you:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const-string v1, "BASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->sis:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    sget-object v5, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->zta:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->you:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->tsu:[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
    .locals 1

    const-class v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    return-object p0
.end method

.method public static values()[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->tsu:[Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, [Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    return-object v0
.end method
