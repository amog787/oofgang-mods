.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zgw"
.end annotation


# instance fields
.field public cno:J

.field public kth:J

.field public rtg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public sis:I

.field public ssp:J

.field public tsu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public you:Ljava/lang/String;

.field public zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis:I

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->tsu:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu:Ljava/util/List;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu:Ljava/util/List;

    :goto_0
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public sis(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V
    .locals 0

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object p4, p1, p3

    sget-object p5, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->bio:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p6

    aget p5, p5, p6

    const/4 p6, 0x1

    if-eq p5, p6, :cond_1

    const/4 p6, 0x2

    if-eq p5, p6, :cond_1

    const/4 p6, 0x3

    if-eq p5, p6, :cond_0

    const/4 p6, 0x4

    if-eq p5, p6, :cond_0

    goto :goto_1

    :cond_0
    iget-wide p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->cno:J

    iget-object p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p8

    invoke-interface {p7, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu:Ljava/util/List;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-interface {p9, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p9

    sub-long/2addr p7, p9

    add-long/2addr p5, p7

    iput-wide p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->cno:J

    goto :goto_1

    :cond_1
    iget-wide p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->ssp:J

    iget-object p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->rtg:Ljava/util/List;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p8

    invoke-interface {p7, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Ljava/lang/Long;

    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    iget-object p9, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu:Ljava/util/List;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-interface {p9, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p9

    sub-long/2addr p7, p9

    add-long/2addr p5, p7

    iput-wide p5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->ssp:J

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->ssp:J

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->cno:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->kth:J

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# pkt ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [MD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->ssp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", WD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->cno:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->kth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# pkt ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], [MD: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->ssp:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", WD: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->cno:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->kth:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# pkt ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [MD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->ssp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", WD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->cno:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->kth:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
