.class public Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;
.super Landroid/view/View;
.source "FingerprintLocationAnimationView.java"

# interfaces
.implements Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mDotPaint:Landroid/graphics/Paint;

.field private final mDotRadius:I

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFractionCenterX:F

.field private final mFractionCenterY:F

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mMaxPulseRadius:I

.field private final mPulsePaint:Landroid/graphics/Paint;

.field private mPulseRadius:F

.field private mRadiusAnimator:Landroid/animation/ValueAnimator;

.field private final mStartPhaseRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    .line 179
    new-instance p2, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;

    invoke-direct {p2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->fingerprint_dot_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$dimen;->fingerprint_pulse_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$fraction;->fingerprint_sensor_location_fraction_x:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$fraction;->fingerprint_sensor_location_fraction_y:I

    invoke-virtual {p2, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p2

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    .line 65
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p2

    .line 66
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    const p2, 0x10c000e

    .line 70
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 72
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;F)F
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Ljava/lang/Runnable;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)Landroid/graphics/Paint;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    return-void
.end method

.method private drawDot(Landroid/graphics/Canvas;)V
    .locals 3

    .line 83
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotRadius:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawPulse(Landroid/graphics/Canvas;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterX()F

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->getCenterY()F

    move-result v1

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulseRadius:F

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getCenterX()F
    .locals 1

    .line 91
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterX:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getCenterY()F
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFractionCenterY:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private startAlphaAnimation()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mPulsePaint:Landroid/graphics/Paint;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 158
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 166
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x2ee

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-void

    :array_0
    .array-data 4
        0x3e19999a    # 0.15f
        0x0
    .end array-data
.end method

.method private startPhase()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->startRadiusAnimation()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->startAlphaAnimation()V

    return-void
.end method

.method private startRadiusAnimation()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 125
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mMaxPulseRadius:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 126
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x3e8

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 153
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->drawPulse(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->drawDot(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public pauseAnimation()V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    return-void
.end method

.method public startAnimation()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->startPhase()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mStartPhaseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mRadiusAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintLocationAnimationView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method
