.class Lcom/android/server/am/fto$you;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/fto;


# direct methods
.method private constructor <init>(Lcom/android/server/am/fto;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/fto;Lcom/android/server/am/fto$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/fto$you;-><init>(Lcom/android/server/am/fto;)V

    return-void
.end method


# virtual methods
.method public gck(ILjava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/fto;->zta()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteTrafficChanged"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/fto;->you(Lcom/android/server/am/fto;ILjava/lang/String;Z)V

    return-void
.end method

.method public kth(IZ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/fto;->zta()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteVideoChanged"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/fto;->cno(Lcom/android/server/am/fto;IZ)V

    return-void
.end method

.method public you(ILjava/lang/String;Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/fto;->zta()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteTrafficHighChanged"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/fto;->sis(Lcom/android/server/am/fto;ILjava/lang/String;Z)V

    return-void
.end method

.method public ywr(ILjava/lang/String;Z)V
    .locals 0

    sget-boolean p2, Lcom/android/server/am/fto;->ssp:Z

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/server/am/fto;->zta()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const-string p2, "noteCameraChanged"

    invoke-static {p2}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {p0, p1, p3}, Lcom/android/server/am/fto;->kth(Lcom/android/server/am/fto;IZ)V

    return-void
.end method

.method public zta(IZ)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/fto;->ssp:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/am/fto;->zta()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "noteAudioChanged"

    invoke-static {v0}, Lcom/android/server/am/fto;->dma(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {v0}, Lcom/android/server/am/fto;->tsu(Lcom/android/server/am/fto;)Z

    move-result v0

    if-eq v0, p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/fto;->ssp(Lcom/android/server/am/fto;IZ)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/fto$you;->you:Lcom/android/server/am/fto;

    invoke-static {p0, p2}, Lcom/android/server/am/fto;->rtg(Lcom/android/server/am/fto;Z)Z

    return-void
.end method
