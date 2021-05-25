.class public final enum Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OPSystemCpuLoadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SystemLoadType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rtg:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field public static final enum sis:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field private static final synthetic ssp:[Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field public static final enum tsu:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field public static final enum you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field public static final enum zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const-string v1, "UNKNOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    new-instance v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const-string v1, "LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    new-instance v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const-string v1, "MEDIMU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->sis:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    new-instance v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const-string v1, "HIGH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->tsu:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    new-instance v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const-string v1, "VERYHIGH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->rtg:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    sget-object v7, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->sis:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->tsu:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->ssp:[Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

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

    iput p3, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;
    .locals 1

    const-class v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->ssp:[Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-virtual {v0}, [Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object v0
.end method

.method public static you(I)Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->rtg:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->tsu:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->sis:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    return-object p0
.end method


# virtual methods
.method public final zta()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->value:I

    return p0
.end method
