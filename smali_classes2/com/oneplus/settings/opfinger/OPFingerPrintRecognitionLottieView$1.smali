.class Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;
.super Ljava/lang/Object;
.source "OPFingerPrintRecognitionLottieView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curretProgress:F

.field final synthetic val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V
    .locals 0

    .line 106
    iput-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->curretProgress:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 110
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->getSplitSteps()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    .line 112
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->curretProgress:F

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->val$lottieView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 114
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->curretProgress:F

    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p1, 0x0

    .line 117
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView$1;->curretProgress:F

    :cond_1
    return-void
.end method
