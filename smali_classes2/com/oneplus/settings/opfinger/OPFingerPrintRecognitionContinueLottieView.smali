.class public Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;
.super Landroid/widget/FrameLayout;
.source "OPFingerPrintRecognitionContinueLottieView.java"


# instance fields
.field private mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mContext:Landroid/content/Context;

.field private mFingerPrintView:Landroid/widget/FrameLayout;

.field private mLastExcessStep:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

.field private mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 28
    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    .line 38
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 28
    iput p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    .line 33
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->op_fod_fingerprint_enroll_lottie_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 101
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/high16 p1, 0x40400000    # 3.0f

    .line 102
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 103
    new-instance p1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;

    invoke-direct {p1, p0, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;Lcom/oneplus/settings/opfinger/OPLottieAnimationView;)V

    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2
.end method


# virtual methods
.method public dynamicSetLottieSplit(II)V
    .locals 6

    .line 144
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getUnFullFillViewCount()I

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x0

    .line 149
    div-int/2addr v0, p2

    const/4 v1, 0x1

    if-gtz v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v0, 0x0

    .line 154
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v3

    const/16 v4, 0xc

    if-nez v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 156
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v2, v4, v2

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_2
    add-int/lit8 v2, v0, 0x0

    .line 160
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 161
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 162
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v5, v4, v2

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_3
    add-int/lit8 v3, v0, 0x0

    .line 166
    iget-object v5, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v5}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v5

    if-nez v5, :cond_4

    .line 167
    iget-object v5, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v5, v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 168
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_4
    add-int/lit8 v0, v0, 0x0

    .line 172
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v2

    if-nez v2, :cond_5

    .line 173
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 174
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    div-int v0, v4, v0

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_5
    if-ne p2, v1, :cond_6

    .line 178
    iget p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    add-int/2addr p1, v1

    .line 179
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    .line 180
    iget-object p2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p2, p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 181
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iget p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLastExcessStep:I

    div-int/2addr v4, p0

    int-to-float p0, v4

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    :cond_6
    return-void
.end method

.method public getUnFullFillViewCount()I
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 199
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/lit8 v0, v0, -0x1

    :cond_4
    return v0
.end method

.method public initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 73
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_fod_fingerprint_enroll_lottie_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 75
    sget v0, Lcom/android/settings/R$raw;->op_fod_fingerprint_enroll_outer_bg:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 76
    sget p1, Lcom/android/settings/R$raw;->op_fod_fingerprint_enroll_outer_01:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 78
    sget p1, Lcom/android/settings/R$raw;->op_fod_fingerprint_enroll_outer_02:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v0, 0x3

    .line 79
    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 80
    sget p1, Lcom/android/settings/R$raw;->op_fod_fingerprint_enroll_outer_03:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 81
    invoke-virtual {p1, v0}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->setSplitSteps(I)V

    .line 82
    sget p1, Lcom/android/settings/R$raw;->op_fod_fingerprint_enroll_outer_04:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 83
    sget p1, Lcom/android/settings/R$raw;->op_fod_fingerprint_enroll_outer_05:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->getLottieAnimationView(ILandroid/widget/FrameLayout;)Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 84
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 88
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 89
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 2

    .line 47
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 49
    sget v1, Lcom/android/settings/R$layout;->op_finger_input_anim_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    const-string v0, "#414141"

    .line 52
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->initLottieAnimationView(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public playAnimationByCount(IIIZ)V
    .locals 0

    .line 125
    invoke-virtual {p0, p2, p3}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->dynamicSetLottieSplit(II)V

    .line 126
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 130
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 133
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 136
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPLottieAnimationView;->isFillCompleted()Z

    move-result p1

    if-nez p1, :cond_4

    .line 139
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :cond_4
    return-void
.end method

.method public playContinueAnimation()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mBgView:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method public releaseFingerprintLottieAnimation()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 208
    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView01:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 212
    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView02:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 216
    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView03:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 220
    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView04:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    if-eqz v0, :cond_4

    .line 223
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 224
    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mLottieAnimationView05:Lcom/oneplus/settings/opfinger/OPLottieAnimationView;

    :cond_4
    return-void
.end method

.method public setBackGround(I)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$drawable;->opfinger_anim_color_fod_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$drawable;->opfinger_anim_color_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 63
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->mFingerPrintView:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    .line 64
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move-object p0, v0

    .line 67
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    return-void
.end method
