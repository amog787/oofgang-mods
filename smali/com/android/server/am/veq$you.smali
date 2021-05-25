.class Lcom/android/server/am/veq$you;
.super Lcom/android/server/am/gck;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/veq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/veq;


# direct methods
.method private constructor <init>(Lcom/android/server/am/veq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-direct {p0}, Lcom/android/server/am/gck;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/veq;Lcom/android/server/am/veq$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/veq$you;-><init>(Lcom/android/server/am/veq;)V

    return-void
.end method


# virtual methods
.method public bio(IZ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteVideoChanged"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/veq;->wtn(Lcom/android/server/am/veq;IZ)V

    return-void
.end method

.method public gck(ILjava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteTrafficChanged"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/veq;->ssp(Lcom/android/server/am/veq;ILjava/lang/String;Z)V

    return-void
.end method

.method public noteProcessStateChanged(IILjava/lang/String;Ljava/lang/String;ZII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    iget-object v3, v0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {v3}, Lcom/android/server/am/veq;->dma(Lcom/android/server/am/veq;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {v3, p1, p2}, Lcom/android/server/am/veq;->sis(Lcom/android/server/am/veq;II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noteProcessStateChanged uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " procName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isProcessStart: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " killReason: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " diedAdj: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    :goto_0
    iget-object v0, v0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/veq;->tsu(Lcom/android/server/am/veq;IILjava/lang/String;Ljava/lang/String;ZII)V

    :cond_1
    return-void
.end method

.method public ssp(IZ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteCameraChanged"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/veq;->gck(Lcom/android/server/am/veq;IZ)V

    return-void
.end method

.method public you(ILjava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteTrafficHighChanged"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/veq;->cno(Lcom/android/server/am/veq;ILjava/lang/String;Z)V

    return-void
.end method

.method public zta(IZ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/veq;->gwm:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/veq;->you()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteAudioChanged"

    invoke-static {v0}, Lcom/android/server/am/veq;->fto(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {v0}, Lcom/android/server/am/veq;->kth(Lcom/android/server/am/veq;)Z

    move-result v0

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/veq;->igw(Lcom/android/server/am/veq;IZ)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/veq$you;->you:Lcom/android/server/am/veq;

    invoke-static {p0, p2}, Lcom/android/server/am/veq;->bio(Lcom/android/server/am/veq;Z)Z

    return-void
.end method
