.class Lcom/android/server/wm/OpPowerConsumpStats$vdb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "vdb"
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/wm/OpPowerConsumpStats;

.field private sis:J

.field private tsu:I

.field private you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

.field private zta:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->rtg:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->zta:I

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput-wide p4, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    iput p6, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    return p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    return-wide v0
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats$vdb;I)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    return v0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$vdb;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->zta:I

    return p0
.end method


# virtual methods
.method public bio()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    return-void
.end method

.method public cno(JI)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    return-void
.end method

.method public kth(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap]  CapSummary ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] Drop= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Run= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->rtg:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis:J

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
