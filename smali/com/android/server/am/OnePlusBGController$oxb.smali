.class public Lcom/android/server/am/OnePlusBGController$oxb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oxb"
.end annotation


# instance fields
.field public bio:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public cno:D

.field public gck:Lcom/android/server/am/OnePlusBGController$OptType;

.field public igw:Z

.field public kth:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public rtg:D

.field public sis:D

.field public ssp:D

.field public tsu:D

.field public wtn:Z

.field public you:I

.field public zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IDDDDLcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZZLcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$oxb;->zta:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/OnePlusBGController$oxb;->you:I

    iput-wide p3, p0, Lcom/android/server/am/OnePlusBGController$oxb;->sis:D

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$oxb;->tsu:D

    iput-wide p7, p0, Lcom/android/server/am/OnePlusBGController$oxb;->rtg:D

    add-double/2addr p3, p5

    add-double/2addr p3, p7

    iput-wide p3, p0, Lcom/android/server/am/OnePlusBGController$oxb;->ssp:D

    iput-wide p9, p0, Lcom/android/server/am/OnePlusBGController$oxb;->cno:D

    iput-object p11, p0, Lcom/android/server/am/OnePlusBGController$oxb;->kth:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p12, p0, Lcom/android/server/am/OnePlusBGController$oxb;->bio:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p13, p0, Lcom/android/server/am/OnePlusBGController$oxb;->igw:Z

    iput-boolean p14, p0, Lcom/android/server/am/OnePlusBGController$oxb;->wtn:Z

    iput-object p15, p0, Lcom/android/server/am/OnePlusBGController$oxb;->gck:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## UidmAh["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$oxb;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$oxb;->zta:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oxb;->sis:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oxb;->tsu:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$oxb;->rtg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$oxb;->wtn:Z

    if-eqz p0, :cond_0

    const-string p0, "Spe]"

    goto :goto_0

    :cond_0
    const-string p0, "]"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
