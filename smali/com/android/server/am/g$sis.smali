.class Lcom/android/server/am/g$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/OPBRPorcessSpeedMonitor$sis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/g;


# direct methods
.method private constructor <init>(Lcom/android/server/am/g;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/g$sis;->zta:Lcom/android/server/am/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/g;Lcom/android/server/am/g$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/g$sis;-><init>(Lcom/android/server/am/g;)V

    return-void
.end method


# virtual methods
.method public zta(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteSpeedChanged speedType = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSystemStateMonitor"

    invoke-static {v0, p0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/obl;->cno()Lcom/android/server/am/obl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/obl;->bvj(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V

    return-void
.end method
