.class public Lcom/android/server/am/OnePlusBGController$qbh;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "qbh"
.end annotation


# instance fields
.field public bio:D

.field public bvj:D

.field public cno:D

.field public dma:D

.field public gck:D

.field public igw:D

.field public kth:D

.field public oif:D

.field public qbh:D

.field public rtg:D

.field public sis:J

.field public ssp:D

.field public tsu:J

.field public wtn:D

.field public you:Lcom/android/server/am/OnePlusBGController$ProcType;

.field public ywr:D

.field public zta:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController$ProcType;IJLcom/android/server/am/OnePlusBGController$oif;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    iput p2, p0, Lcom/android/server/am/OnePlusBGController$qbh;->zta:I

    iput-wide p3, p0, Lcom/android/server/am/OnePlusBGController$qbh;->sis:J

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->you:J

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->tsu:J

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->rtg:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->tsu:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->ssp:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->rtg:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->cno:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->ssp:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->kth:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->cno:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->bio:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->kth:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->igw:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->bio:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->wtn:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->igw:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->gck:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->wtn:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->dma:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->gck:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->ywr:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->dma:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->qbh:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->ywr:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->oif:D

    iget-wide p1, p5, Lcom/android/server/am/OnePlusBGController$oif;->qbh:D

    iput-wide p1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->bvj:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# MAhRecord ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |Stamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->sis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |Run="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |Total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->rtg:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Usg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->ssp:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->cno:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Gps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->kth:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Cpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->bio:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Sen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->igw:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Mob="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->wtn:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Wak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->gck:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Cam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->dma:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Flh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->ywr:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Ble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->qbh:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Aud="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->oif:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |Vid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$qbh;->bvj:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->sis:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->tsu:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->rtg:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->ssp:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->cno:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->kth:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->bio:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->igw:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->wtn:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->gck:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->dma:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->ywr:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->qbh:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->oif:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$qbh;->bvj:D

    return-void
.end method
