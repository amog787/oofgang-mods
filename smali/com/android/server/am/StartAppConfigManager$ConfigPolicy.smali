.class public final enum Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/StartAppConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final rtg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum sis:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

.field private static final synthetic ssp:[Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

.field public static final enum tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

.field public static final enum you:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

.field public static final enum zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;


# instance fields
.field public final label:Ljava/lang/String;

.field public final policy:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    const-string v1, "BlockNotRunning"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    new-instance v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    const-string v1, "Pass"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v1, v3}, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->you:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    new-instance v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    const-string v1, "Block"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v1, v4}, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->sis:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    new-instance v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    const-string v1, "BlockNotForeground"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v1, v5}, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    sget-object v6, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    aput-object v6, v1, v2

    sget-object v6, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->you:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    aput-object v6, v1, v3

    sget-object v3, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->sis:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    aput-object v3, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->ssp:[Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->rtg:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->values()[Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->rtg:Ljava/util/Map;

    iget v5, v3, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->label:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;
    .locals 1

    const-class v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->ssp:[Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    invoke-virtual {v0}, [Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    return-object v0
.end method

.method public static zta(I)Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;
    .locals 1

    sget-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->rtg:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    return-object p0
.end method
