.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bvj"
.end annotation


# instance fields
.field public cno:I

.field public rtg:I

.field public sis:J

.field public ssp:I

.field public tsu:J

.field public you:J

.field public zta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->ssp:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->cno:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->ssp:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->cno:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->ssp:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->cno:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->ssp:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->cno:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    iput p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->cno:I

    iput p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->ssp:I

    sub-long/2addr p4, p2

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    sub-int/2addr p7, p6

    iput p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->rtg:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->ssp:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->cno:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    iput-wide p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->sis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
