.class Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;
.super Ljava/lang/Object;
.source "OPFingerPrintRecognitionContinueLottieView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curretProgress:F

.field final synthetic val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V
    .locals 0

    .line 103
    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 107
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 108
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->getSplitSteps()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 109
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 111
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    :cond_0
    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v2, v4

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    .line 115
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setFillCompleted(Z)V

    .line 117
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPFingerPrintRecognitionContinueLottieView splitProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " curretProgress:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;->curretProgress:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MainActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
