.class public Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;
.super Landroid/widget/RelativeLayout;
.source "OPFingerPrintDynamicEnrollView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

.field private mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsTitle:Landroid/widget/TextView;

.field private mOPFingerInputTipsWarning:Landroid/widget/TextView;

.field private mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

.field private mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

.field private mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

.field public mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    .line 73
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->op_fingerprint_dynamic_input_category:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    .line 75
    sget v0, Lcom/android/settings/R$id;->op_finger_fod_bg_view:I

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->op_finger_recognition_lottie_view:I

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    .line 80
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->op_finger_recognition_continue_lottie_view:I

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    .line 83
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_tips_title_tv:I

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    .line 85
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_tips_subtitle_tv:I

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_tips_warning:I

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    .line 89
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->opfinger_input_completed_comfirm_btn:I

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    .line 91
    new-instance v0, Lcom/oneplus/settings/opfinger/-$$Lambda$OPFingerPrintDynamicEnrollView$eKKvrHSp4Wm1p9Ark3E310fwwnc;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/-$$Lambda$OPFingerPrintDynamicEnrollView$eKKvrHSp4Wm1p9Ark3E310fwwnc;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget p1, Lcom/android/settings/R$id;->opfinger_fod_enroll_completed_anim:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 98
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initViews$0(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;

    if-eqz p0, :cond_0

    .line 93
    invoke-interface {p0}, Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;->onOPFingerComfirmClick()V

    :cond_0
    return-void
.end method


# virtual methods
.method public doRecognition(IIIZ)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->oneplus_fingerprint_enroll_summary:I

    .line 307
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    if-gt p1, v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz p0, :cond_1

    .line 310
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->playAnimationByCount(IIIZ)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz p0, :cond_1

    .line 316
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->playAnimationByCount(IIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getWarningTipsView()Landroid/widget/TextView;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    return-object p0
.end method

.method public hideHeaderView()V
    .locals 4

    .line 60
    sget v0, Lcom/android/settings/R$id;->setup_title_view_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    sget v1, Lcom/android/settings/R$id;->setup_title_view_bg_shadow:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 62
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->opfinger_input_tips_title_tv:I

    .line 63
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->opfinger_input_tips_subtitle_tv:I

    .line 65
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v3, 0x8

    .line 66
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public hideWarningTips()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsWarning:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public isNeedWaveEffect()Z
    .locals 1

    .line 148
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isFingerprintNeedEnrollTime20(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$initViews$0$OPFingerPrintDynamicEnrollView(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->lambda$initViews$0(Landroid/view/View;)V

    return-void
.end method

.method public playEnrollCompletedAnim()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_2
    return-void
.end method

.method public releaseEnrollCompletedAnim()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mEnrollCompletedAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->releaseFingerprintLottieAnimation()V

    .line 124
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz p0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->releaseFingerprintLottieAnimation()V

    :cond_2
    return-void
.end method

.method public resetTextAndBtn()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    sget v1, Lcom/android/settings/R$string;->oneplus_opfinger_input_setting_tips_title:I

    .line 325
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 330
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    sget v0, Lcom/android/settings/R$string;->oneplus_fingerprint_enroll_summary:I

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    sget v0, Lcom/android/settings/R$string;->oneplus_opfinger_input_setting_back_tips_sub:I

    goto :goto_0

    .line 335
    :cond_2
    sget v0, Lcom/android/settings/R$string;->oneplus_opfinger_input_setting_tips_sub:I

    .line 337
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 339
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    if-eqz p0, :cond_4

    const/16 v0, 0x8

    .line 340
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public resetWithoutAnimation()V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->resetTextAndBtn()V

    .line 364
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 366
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setCenterVisible(Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setCenterVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEdgeVisible(Z)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->isNeedWaveEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintFodBgAnimView:Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintFodBgAnimView;->setEdgeVisible(Z)V

    :cond_0
    return-void
.end method

.method public setEnrollAnimBgColor(Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->setEnrollAnimBgColor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setEnrollAnimVisibility(Z)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 154
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOnOPFingerComfirmListener:Lcom/oneplus/settings/opfinger/OnOPFingerComfirmListener;

    return-void
.end method

.method public setSubTitleView(Landroid/widget/TextView;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    return-void
.end method

.method public setTipsContinueContent()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oneplus_opfinger_input_recognize_continue_title:I

    .line 261
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->oneplus_opfinger_input_recognize_continue_sub:I

    .line 263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputCompletedComfirmBtn:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public setTipsStatusContent(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_opfinger_input_up_title:I

    .line 236
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_opfinger_input_up_sub:I

    .line 238
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->oneplus_opfinger_input_setting_tips_title:I

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsSubTitle:Landroid/widget/TextView;

    sget p1, Lcom/android/settings/R$string;->oneplus_opfinger_input_setting_tips_sub:I

    .line 232
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public setTitleView(Landroid/widget/TextView;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerInputTipsTitle:Landroid/widget/TextView;

    return-void
.end method

.method public showContinueView()V
    .locals 12

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionLottieView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 273
    iget-object p0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintDynamicEnrollView;->mOPFingerPrintRecognitionContinueLottieView:Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintRecognitionContinueLottieView;->playContinueAnimation()V

    .line 274
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 275
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 277
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 279
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v4, 0x3f4ccccd    # 0.8f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 283
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->start()V

    return-void
.end method
