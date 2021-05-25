.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cjf"
.end annotation


# instance fields
.field public bio:Z

.field public cno:J

.field public kth:F

.field public rtg:J

.field public sis:J

.field public ssp:J

.field public tsu:J

.field public you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

.field public zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    iput-object p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    const/4 p6, 0x0

    iput-boolean p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    iput-wide p8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    const-wide/32 p1, 0x124f800

    div-long/2addr p8, p1

    iput-wide p8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->cno:J

    long-to-float p1, p8

    const/high16 p2, 0x45610000    # 3600.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    new-instance p1, Ljava/math/BigDecimal;

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    float-to-double p2, p2

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    goto :goto_0

    :cond_0
    iput-boolean p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    :goto_1
    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    const/16 p1, 0x10

    invoke-static {p2, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    invoke-static {p3, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    invoke-static {p4, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    invoke-static {p5, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    const-wide/32 p3, 0x124f800

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->cno:J

    long-to-float p1, p1

    const/high16 p2, 0x45610000    # 3600.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    new-instance p1, Ljava/math/BigDecimal;

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    float-to-double p2, p2

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    :goto_1
    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMMasterInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->cno:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " hr)]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(Z)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->cno:J

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    invoke-static {p3, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    invoke-static {p1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    sub-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    invoke-static {p4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    const-wide/32 p3, 0x124f800

    div-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->cno:J

    long-to-float p1, p1

    const/high16 p2, 0x45610000    # 3600.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    new-instance p1, Ljava/math/BigDecimal;

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    float-to-double p2, p2

    invoke-direct {p1, p2, p3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p2, 0x5

    const/4 p3, 0x4

    invoke-virtual {p1, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->kth:F

    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->bio:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    :goto_1
    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    return-void
.end method
