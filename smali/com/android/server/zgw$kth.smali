.class Lcom/android/server/zgw$kth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "kth"
.end annotation


# instance fields
.field final synthetic cno:Lcom/android/server/zgw;

.field public rtg:I

.field public sis:Z

.field public ssp:Ljava/lang/String;

.field public tsu:I

.field public you:Z

.field public zta:Z


# direct methods
.method public constructor <init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$kth;->cno:Lcom/android/server/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/zgw$kth;->zta:Z

    iput-boolean p3, p0, Lcom/android/server/zgw$kth;->you:Z

    iput-boolean p4, p0, Lcom/android/server/zgw$kth;->sis:Z

    iput p5, p0, Lcom/android/server/zgw$kth;->tsu:I

    iput p6, p0, Lcom/android/server/zgw$kth;->rtg:I

    iput-object p7, p0, Lcom/android/server/zgw$kth;->ssp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedReportLogs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw$kth;->zta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedReportMDM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw$kth;->you:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedReprotBugreport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw$kth;->sis:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCriticalTemp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw$kth;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCriticalChargingTemp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw$kth;->rtg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMdmEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw$kth;->ssp:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(ZZZIILjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw$kth;->zta:Z

    iput-boolean p2, p0, Lcom/android/server/zgw$kth;->you:Z

    iput-boolean p3, p0, Lcom/android/server/zgw$kth;->sis:Z

    iput p4, p0, Lcom/android/server/zgw$kth;->tsu:I

    iput p5, p0, Lcom/android/server/zgw$kth;->rtg:I

    iput-object p6, p0, Lcom/android/server/zgw$kth;->ssp:Ljava/lang/String;

    return-void
.end method
