.class public final enum Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic rtg:[Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

.field public static final enum sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

.field private static final tsu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum you:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

.field public static final enum zta:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;


# instance fields
.field public final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    const-string v1, "Game"

    const/4 v2, 0x0

    const-string v3, "game"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    new-instance v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    const-string v1, "Social"

    const/4 v3, 0x1

    const-string v4, "social"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->you:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    new-instance v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    const-string v1, "None"

    const/4 v4, 0x2

    const-string v5, "none"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    sget-object v5, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    aput-object v5, v1, v2

    sget-object v5, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->you:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    aput-object v5, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->rtg:[Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->tsu:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->values()[Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->tsu:Ljava/util/Map;

    iget-object v5, v3, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->label:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;
    .locals 1

    const-class v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->rtg:[Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    invoke-virtual {v0}, [Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    return-object v0
.end method

.method public static zta(Ljava/lang/String;)Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->tsu:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    return-object p0
.end method
