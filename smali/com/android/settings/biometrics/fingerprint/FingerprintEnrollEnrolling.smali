.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;
    }
.end annotation


# instance fields
.field callFingerprintServiceRunnable:Ljava/lang/Runnable;

.field protected isSetupPage:Z

.field private mAnimationCancelled:Z

.field private mConfirmCompleted:Z

.field private mCurrentProgress:I

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private final mDelayedShowLottieRunnable:Ljava/lang/Runnable;

.field protected mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mEnrollState:I

.field private mEnrollSuccessCount:I

.field private mErrorAnimator:Landroid/animation/Animator;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mHasInputCompleted:Z

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIsEnrollPaused:Z

.field private mLaunchingFinish:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field protected mNeedHideNavBar:Z

.field private mNeedJumpToFingerprintSettings:Z

.field protected mNextButton:Landroid/widget/Button;

.field protected mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

.field protected mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

.field private mOnBackPress:Z

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mRepeatMessage:Landroid/widget/TextView;

.field private mScreenNavBarEnabled:Z

.field protected mStartMessage:Landroid/widget/TextView;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mValidEnroll:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;

.field overlayLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 130
    fill-array-data v1, :array_0

    const/4 v2, -0x1

    .line 131
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    .line 132
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 134
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 135
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 165
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    .line 169
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 170
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    const/4 v1, 0x1

    .line 190
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    const/4 v2, -0x1

    .line 192
    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    .line 194
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNeedHideNavBar:Z

    .line 198
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNeedJumpToFingerprintSettings:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    .line 205
    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    .line 799
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 806
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 831
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 1062
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    const-string v0, "fingerprint"

    .line 1073
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1072
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    .line 1425
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$12;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$12;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    .line 1464
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$13;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$13;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedShowLottieRunnable:Ljava/lang/Runnable;

    .line 1475
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$14;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$14;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Lcom/android/settings/biometrics/BiometricEnrollSidecar;)Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)[B
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 0

    .line 105
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 1195
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 1196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "FingerprintEnrollEnrolling"

    .line 1197
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1198
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private adjustTitleSize()V
    .locals 3

    .line 1527
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerFontSize(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isLargerScreenZoom(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1528
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x41900000    # 18.0f

    if-eqz v0, :cond_0

    .line 1529
    sget v0, Lcom/android/settings/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1530
    sget v0, Lcom/android/settings/R$id;->start_message:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1531
    sget v0, Lcom/android/settings/R$id;->repeat_message:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1533
    sget v0, Lcom/android/settings/R$id;->sud_layout_icon:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1534
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1535
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1536
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1538
    sget v0, Lcom/android/settings/R$id;->fingerprint_enroll_enrolling_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1540
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1541
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1542
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1545
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1546
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1547
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1548
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1551
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1553
    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1554
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private animateErrorText(Landroid/widget/TextView;)V
    .locals 1

    .line 1456
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 1457
    sget v0, Lcom/android/settings/R$anim;->shake_anim:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorAnimator:Landroid/animation/Animator;

    .line 1459
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1460
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1461
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private changeEnrollStateByFocusChanged(Z)V
    .locals 2

    const-string p0, "FingerprintEnrollEnrolling"

    const-string v0, "fingerprint"

    .line 1087
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 1097
    :goto_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    const-string p1, "changeEnrollStateByFocusChanged "

    .line 1098
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateStatus , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private clearError()V
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 768
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 769
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->fingerprint_error_text_disappear_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 771
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 772
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$eo3zX11cVbdZD3KKpJKd94ja24w;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$eo3zX11cVbdZD3KKpJKd94ja24w;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 773
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 774
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private disableRecentAndHomeKey()V
    .locals 2

    .line 1140
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    const-string v0, "FingerprintEnrollEnrolling"

    const-string v1, "disableRecentAndHomeKey:"

    .line 1141
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v0, 0x1200000

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private disableRecentKey()V
    .locals 1

    .line 1157
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    const/high16 v0, 0x1000000

    .line 1158
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private enableRecentAndHomeKey()V
    .locals 2

    const-string v0, "FingerprintEnrollEnrolling"

    const-string v1, "enableRecentAndHomeKey:"

    .line 1148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1150
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private enableRecentKey()V
    .locals 1

    .line 1163
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1164
    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1226
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1227
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1228
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$9;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1245
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fadeOut(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1249
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1250
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1251
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$10;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$10;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1268
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getHeadView()Landroid/widget/TextView;
    .locals 2

    .line 1495
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget v0, Lcom/android/settings/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    .line 1498
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1499
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1500
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private initFingerPrintEnrollView()V
    .locals 3

    .line 1004
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1005
    sget v0, Lcom/android/settings/R$id;->op_finger_enroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    .line 1006
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setTitleView(Landroid/widget/TextView;)V

    .line 1007
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setSubTitleView(Landroid/widget/TextView;)V

    .line 1009
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->hideHeaderView()V

    .line 1010
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;)V

    .line 1011
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setEnrollAnimVisibility(Z)V

    goto :goto_1

    .line 1013
    :cond_0
    sget v0, Lcom/android/settings/R$id;->op_finger_enroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    .line 1014
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTitleView(Landroid/widget/TextView;)V

    .line 1016
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setSubTitleView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getHeadView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTitleView(Landroid/widget/TextView;)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setSubTitleView(Landroid/widget/TextView;)V

    .line 1022
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideHeaderView()V

    .line 1023
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;)V

    .line 1025
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    :cond_2
    :goto_1
    const v0, 0x10c000f

    .line 1031
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    .line 1033
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private synthetic lambda$clearError$1()V
    .locals 1

    .line 773
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showEnrollNoteDialog$0(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string v0, "op_do_not_show_fingerprint_enroll_note"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 451
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Don\'t show again:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FingerprintNoteDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pauseEnroll()V
    .locals 3

    const-string v0, "FingerprintEnrollEnrolling"

    .line 1272
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1273
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1276
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeOut(Landroid/view/View;)V

    .line 1277
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V

    .line 1278
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_0

    .line 1279
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1280
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1283
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeOut(Landroid/view/View;)V

    .line 1284
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V

    .line 1285
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1288
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    const-string v1, "fingerprint"

    .line 1291
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1290
    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x9

    .line 1295
    :try_start_0
    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    .line 1296
    iput v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    const-string p0, "pauseEnroll "

    .line 1297
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStatus , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 1204
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resumeEnroll(ZI)V
    .locals 4

    const-string v0, "FingerprintEnrollEnrolling"

    .line 1317
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1318
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1319
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V

    .line 1320
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeOut(Landroid/view/View;)V

    .line 1321
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showContinueView()V

    .line 1322
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {p1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setEdgeVisible(Z)V

    .line 1323
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    .line 1324
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1325
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1326
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V

    .line 1327
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->fadeOut(Landroid/view/View;)V

    .line 1328
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showContinueView()V

    .line 1329
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {p1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEdgeVisible(Z)V

    .line 1330
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1332
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    const-string p1, "fingerprint"

    .line 1335
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1334
    invoke-static {p1}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1336
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    .line 1339
    :try_start_0
    invoke-interface {p1, p2}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    .line 1340
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    const-string p0, "resumeEnroll "

    .line 1341
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1343
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateStatus , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 3

    .line 1170
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1174
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    .line 1174
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eq p1, v2, :cond_2

    .line 1179
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 1178
    invoke-static {p0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private showContinueView()V
    .locals 4

    .line 1305
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$11;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$11;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 735
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->animateErrorText(Landroid/widget/TextView;)V

    goto :goto_0

    .line 739
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showError error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrolling"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 742
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 743
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->fingerprint_error_text_appear_distance:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 745
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 746
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 747
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 748
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 749
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 750
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 751
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 753
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 754
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 755
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isSetupPage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 721
    invoke-static {p1, p2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;->newInstance(Ljava/lang/CharSequence;IZ)Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;

    move-result-object p1

    goto :goto_0

    .line 723
    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;

    move-result-object p1

    .line 726
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$FingerprintErrorDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showScreenNavBar(Z)V
    .locals 1

    .line 1106
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    const-string v0, "buttons_show_on_screen_navkeys"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startIconAnimation()V
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private updateProgress(ZII)V
    .locals 6

    .line 1350
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oneplus--updateProgress-enrollSteps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enrollStepsRemaining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x1

    sub-int v1, v0, p3

    const/16 v2, 0x64

    mul-int/2addr v1, v2

    .line 1355
    div-int/2addr v1, v0

    .line 1356
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v0, :cond_4

    if-gt p3, p2, :cond_4

    .line 1357
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 1358
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 1359
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 1361
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1362
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v5

    if-gt v0, v5, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setEnrollAnimVisibility(Z)V

    goto :goto_0

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setEnrollAnimVisibility(Z)V

    goto :goto_0

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    .line 1373
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    iget v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-virtual {v0, v5, p3, v1, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->doRecognition(IIIZ)V

    goto :goto_1

    .line 1376
    :cond_3
    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-virtual {p3, v0, v1, v4}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    goto :goto_1

    .line 1379
    :cond_4
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 1380
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1381
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    iget v5, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/2addr v5, v4

    invoke-virtual {v0, v5, p3, v1, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->doRecognition(IIIZ)V

    goto :goto_1

    .line 1383
    :cond_5
    iget-object p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/2addr v0, v4

    invoke-virtual {p3, v0, v1, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    .line 1386
    :goto_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result p3

    .line 1387
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    if-ne v0, p3, :cond_7

    .line 1388
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->pauseEnroll()V

    .line 1389
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1390
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setTipsContinueContent()V

    goto :goto_2

    .line 1392
    :cond_6
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTipsContinueContent()V

    .line 1394
    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1395
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showContinueView()V

    .line 1404
    :cond_7
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-lt v1, v2, :cond_8

    .line 1411
    iput-boolean v4, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 1412
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1414
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedShowLottieRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1415
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x2ee

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1418
    :cond_8
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_9

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1419
    :cond_9
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->acquireWakeLock()V

    .line 1421
    :cond_a
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1422
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    .line 1423
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p3, "screen_off_timeout"

    .line 1422
    invoke-static {p0, p3, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected delayCallFingerprintService()V
    .locals 3

    .line 1489
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1490
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public disableAllKey()V
    .locals 2

    const/4 v0, 0x0

    .line 1131
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    const/4 v0, 0x1

    .line 1132
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    .line 1133
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v1, :cond_0

    .line 1134
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    :cond_0
    return-void
.end method

.method public enableAllKey()V
    .locals 2

    .line 1115
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1116
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    goto :goto_0

    .line 1118
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    .line 1120
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v0, :cond_1

    .line 1121
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    :cond_1
    return-void
.end method

.method protected expandViewTouchDelegate(Landroid/view/View;I)V
    .locals 2

    .line 475
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .line 565
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf0

    return p0
.end method

.method protected getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 0

    .line 427
    new-instance p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    return-object p0
.end method

.method public synthetic lambda$clearError$1$FingerprintEnrollEnrolling()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$clearError$1()V

    return-void
.end method

.method public synthetic lambda$showEnrollNoteDialog$0$FingerprintEnrollEnrolling(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$showEnrollNoteDialog$0(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method protected launchFinish([B)V
    .locals 2

    const/4 v0, 0x1

    .line 1436
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    .line 1437
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x26000000

    .line 1438
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    .line 1441
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1442
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1443
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 1444
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1447
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNeedJumpToFingerprintSettings:Z

    const-string v1, "needJumpToFingerprintSettings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1449
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 1451
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1452
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "FingerprintEnrollEnrolling"

    const-string v1, "onBackPressed"

    .line 995
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 996
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->changeEnrollStateByFocusChanged(Z)V

    .line 997
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onBackPressed()V

    const/4 v0, 0x1

    .line 998
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 999
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1508
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->skip_button:I

    if-ne v0, v1, :cond_0

    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onSkipButtonClick(Landroid/view/View;)V

    goto :goto_0

    .line 1511
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->continue_enroll_button:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    const/16 v0, 0x8

    .line 1512
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->resumeEnroll(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 256
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isSetupPage:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    sget v0, Lcom/android/settings/R$style;->SetupOnePlusFingerprintEnrolling:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_0

    .line 260
    :cond_0
    sget v0, Lcom/android/settings/R$style;->OnePlusFingerprintEnrolling:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 265
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 271
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    sget v0, Lcom/android/settings/R$string;->oneplus_cannot_enroll_fingerprint_in_splitting_screen:I

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 278
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "needJumpToFingerprintSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNeedJumpToFingerprintSettings:Z

    .line 280
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    .line 281
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 285
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 287
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 289
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setElevation(F)V

    .line 294
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    const/4 v3, -0x1

    if-eqz v0, :cond_7

    .line 295
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    if-eq v0, v3, :cond_6

    goto :goto_1

    .line 303
    :cond_6
    sget v0, Lcom/android/settings/R$layout;->op_fod_fingerprint_dynamic_enroll_enrolling_base:I

    goto :goto_1

    .line 305
    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 307
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    if-eq v0, v3, :cond_8

    goto :goto_1

    .line 310
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isSetupPage:Z

    if-eqz v0, :cond_9

    .line 311
    sget v0, Lcom/android/settings/R$layout;->op_fod_setup_fingerprint_enroll_enrolling_base:I

    goto :goto_1

    .line 313
    :cond_9
    sget v0, Lcom/android/settings/R$layout;->op_fod_fingerprint_enroll_enrolling_base:I

    goto :goto_1

    .line 316
    :cond_a
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 317
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    if-eq v0, v3, :cond_b

    goto :goto_1

    .line 320
    :cond_b
    sget v0, Lcom/android/settings/R$layout;->op_back_fingerprint_enroll_enrolling_base:I

    goto :goto_1

    .line 323
    :cond_c
    sget v0, Lcom/android/settings/R$layout;->fingerprint_enroll_enrolling_base:I

    .line 327
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 328
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    .line 330
    sget v0, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 331
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$color;->op_control_text_color_primary_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    sget v0, Lcom/android/settings/R$id;->start_message:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 334
    sget v0, Lcom/android/settings/R$id;->repeat_message:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 335
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 336
    sget v0, Lcom/android/settings/R$id;->fingerprint_progress_bar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 337
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 343
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_d

    .line 344
    sget v0, Lcom/android/settings/R$id;->continue_enroll_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    .line 345
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 347
    sget v0, Lcom/android/settings/R$id;->op_finger_edge_enroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 348
    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    goto :goto_2

    .line 349
    :cond_d
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 351
    sget v0, Lcom/android/settings/R$id;->continue_enroll_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    .line 352
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 354
    sget v0, Lcom/android/settings/R$id;->op_finger_edge_enroll_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "op_side_fingerprint_edge_enroll_anim_dark.json"

    .line 355
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 374
    :cond_e
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->initFingerPrintEnrollView()V

    const-string v0, "statusbar"

    .line 378
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "buttons_show_on_screen_navkeys"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_f

    move v1, v2

    .line 383
    :cond_f
    iput-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    .line 385
    sget v0, Lcom/android/settings/R$anim;->shake_anim:I

    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorAnimator:Landroid/animation/Animator;

    .line 387
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->adjustTitleSize()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 959
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 962
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 963
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mNeedHideNavBar:Z

    if-eqz v0, :cond_1

    .line 964
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableAllKey()V

    goto :goto_0

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableRecentAndHomeKey()V

    goto :goto_0

    .line 970
    :cond_2
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableRecentKey()V

    goto :goto_0

    .line 973
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableAllKey()V

    .line 976
    :goto_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 977
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 978
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 980
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 981
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->releaseEnrollCompletedAnim()V

    goto :goto_1

    .line 983
    :cond_5
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->releaseEnrollCompletedAnim()V

    .line 985
    :goto_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 986
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 987
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 989
    :cond_6
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " errMsgId:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FingerprintEnrollEnrolling"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 650
    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    .line 651
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 652
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {p2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->setEnrollAnimVisibility(Z)V

    goto :goto_0

    .line 655
    :cond_0
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {p2, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    :goto_0
    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    .line 670
    sget p2, Lcom/android/settings/R$string;->oneplus_finger_input_error_tips:I

    goto :goto_1

    .line 662
    :cond_1
    sget p2, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_error_timeout_dialog_message:I

    .line 673
    :goto_1
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 676
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 5

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentHelp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " helpMsgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrolling"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 585
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    .line 586
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    .line 593
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    const/16 v3, 0x44c

    const/16 v4, 0x3ea

    if-nez v0, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    .line 609
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 596
    :cond_1
    sget p1, Lcom/android/settings/R$string;->oneplus_security_settings_fingerprint_exists_dialog_message:I

    .line 597
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 600
    :cond_2
    sget p1, Lcom/android/settings/R$string;->oneplus_fingerprint_acquired_too_similar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 601
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 602
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "FINGERPRINT_ACQUIRED_TOO_SIMILAR:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    if-eq p1, v2, :cond_9

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    .line 640
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 620
    :cond_4
    sget p1, Lcom/android/settings/R$string;->oneplus_security_settings_fingerprint_exists_dialog_message:I

    .line 621
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 636
    :cond_5
    sget p1, Lcom/android/settings/R$string;->oneplus_fingerprint_acquired_too_similar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 637
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 615
    :cond_6
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    if-eqz p0, :cond_a

    .line 616
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->startTouchDownAnim()V

    goto :goto_1

    .line 632
    :cond_7
    sget p1, Lcom/android/settings/R$string;->oneplus_fingerprint_acquired_too_fast:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 633
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 628
    :cond_8
    sget p1, Lcom/android/settings/R$string;->oneplus_fingerprint_acquired_imager_dirty:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 629
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 624
    :cond_9
    sget p1, Lcom/android/settings/R$string;->oneplus_fingerprint_acquired_partial:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 625
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollmentProgressChange--mValidEnroll:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " steps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remaining:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintEnrollEnrolling"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 684
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(ZII)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 521
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    const/4 v0, 0x0

    .line 522
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 1212
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_1

    .line 1214
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1215
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz p1, :cond_0

    .line 1216
    invoke-virtual {p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 1217
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1219
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableRecentAndHomeKey()V

    .line 1220
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onOPFingerComfirmClick()V
    .locals 1

    const/4 v0, 0x1

    .line 1188
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 1189
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 1190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 903
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    .line 905
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 909
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableRecentKey()V

    goto :goto_1

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableAllKey()V

    goto :goto_1

    .line 906
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->enableRecentAndHomeKey()V

    :goto_1
    const/4 v0, 0x0

    .line 916
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    .line 917
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    .line 919
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    .line 920
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 925
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 926
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->hideWarningTips()V

    goto :goto_2

    .line 928
    :cond_4
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideWarningTips()V

    .line 930
    :goto_2
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 931
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 932
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    .line 933
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 936
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->onBackPressed()V

    const/16 v1, 0xa

    .line 938
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->resumeEnroll(ZI)V

    .line 941
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz p0, :cond_5

    .line 942
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    :cond_5
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 873
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 875
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint2()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 878
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->disableRecentKey()V

    goto :goto_1

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->disableAllKey()V

    goto :goto_1

    .line 876
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->disableRecentAndHomeKey()V

    .line 888
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    if-nez v0, :cond_5

    .line 889
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportDynamicEnrollAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 890
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintDynamicEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->resetWithoutAnimation()V

    goto :goto_2

    .line 892
    :cond_4
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetWithoutAnimation()V

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 895
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    .line 896
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    .line 897
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 501
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStart()V

    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_do_not_show_fingerprint_enroll_note"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->delayCallFingerprintService()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showEnrollNoteDialog()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 540
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStop()V

    .line 544
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1077
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 1078
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->changeEnrollStateByFocusChanged(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    .line 1517
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    sget v0, Lcom/android/settings/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1520
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    :goto_0
    return-void
.end method

.method protected shouldStartAutomatically()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected showEnrollNoteDialog()V
    .locals 7

    .line 438
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 443
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->op_fingerprint_note_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->oneplus_contorl_avatar_standard:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 445
    sget v2, Lcom/android/settings/R$id;->checkbox:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 446
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    const-string v5, "op_do_not_show_fingerprint_enroll_note"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 448
    new-instance v3, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$rb_Rq7CTysqI3SAxCDpkfbZtt88;

    invoke-direct {v3, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$rb_Rq7CTysqI3SAxCDpkfbZtt88;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->expandViewTouchDelegate(Landroid/view/View;I)V

    .line 454
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->OPDarkDialogAlert:I

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/android/settings/R$string;->op_fingerprint_enroll_note:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$string;->op_fingerprint_enroll_note_dialog_msg:I

    .line 455
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 457
    invoke-virtual {v1, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/android/settings/R$string;->oneplus_device_name_ok:I

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 458
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 464
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 465
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->setDialogTextColor(Landroidx/appcompat/app/AlertDialog;)V

    return-void
.end method
