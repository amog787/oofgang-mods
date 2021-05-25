.class abstract Lcom/oneplus/android/server/display/sis;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private sis:I

.field private tsu:I

.field private you:Ljava/lang/Boolean;

.field private zta:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bio()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->you:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract cno()I
.end method

.method public dma(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/sis;->sis:I

    return-void
.end method

.method public gck(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/sis;->you:Ljava/lang/Boolean;

    return-void
.end method

.method public igw()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->zta:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public kth()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->you:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract oif(Landroid/content/Context;Z)V
.end method

.method public qbh(Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/sis;->zta:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public rtg()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/sis;->tsu:I

    return p0
.end method

.method public sis()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/display/sis;->zta:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/display/sis;->zta:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public ssp()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->zta:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public tsu()I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/sis;->sis:I

    return p0
.end method

.method public abstract wtn(Landroid/content/Context;)Z
.end method

.method public you(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public ywr(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/sis;->tsu:I

    return-void
.end method

.method public zta()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/sis;->zta:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method
