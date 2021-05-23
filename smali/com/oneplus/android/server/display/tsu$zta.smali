.class Lcom/oneplus/android/server/display/tsu$zta;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/display/tsu;->rtg([F[FZIZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rtg:Z

.field final synthetic sis:I

.field final synthetic ssp:Lcom/oneplus/android/server/display/tsu;

.field final synthetic tsu:[F

.field final synthetic you:Lcom/android/server/display/color/DisplayTransformManager;

.field private zta:Z


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/display/tsu;Lcom/android/server/display/color/DisplayTransformManager;I[FZ)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/tsu$zta;->ssp:Lcom/oneplus/android/server/display/tsu;

    iput-object p2, p0, Lcom/oneplus/android/server/display/tsu$zta;->you:Lcom/android/server/display/color/DisplayTransformManager;

    iput p3, p0, Lcom/oneplus/android/server/display/tsu$zta;->sis:I

    iput-object p4, p0, Lcom/oneplus/android/server/display/tsu$zta;->tsu:[F

    iput-boolean p5, p0, Lcom/oneplus/android/server/display/tsu$zta;->rtg:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/tsu$zta;->zta:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/tsu$zta;->zta:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu$zta;->you:Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/android/server/display/tsu$zta;->sis:I

    iget-object v1, p0, Lcom/oneplus/android/server/display/tsu$zta;->tsu:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/tsu$zta;->rtg:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/tsu$zta;->tsu:[F

    invoke-static {p1}, Lcom/oneplus/android/server/display/tsu;->zta([F)[F

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/display/tsu$zta;->ssp:Lcom/oneplus/android/server/display/tsu;

    invoke-static {p0}, Lcom/oneplus/android/server/display/tsu;->you(Lcom/oneplus/android/server/display/tsu;)Lcom/oneplus/android/server/display/rtg;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/sis;->qbh(Landroid/animation/ValueAnimator;)V

    return-void
.end method
