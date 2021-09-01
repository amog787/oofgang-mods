.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method public static synthetic lambda$cKPkgzkUH_XMmiWPElPo2dP6-s8(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCancelButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    .line 116
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "op_legal_notices_type"

    const/16 v1, 0x8

    .line 117
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_from_settings"

    const/4 v1, 0x1

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$wuUw2dRDPRCgC-2ynV6XkWZaCVE(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    .line 243
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 250
    invoke-virtual {v1, p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v0, :cond_1

    .line 252
    sget p0, Lcom/android/settings/R$string;->fingerprint_intro_error_max:I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 255
    :cond_2
    sget p0, Lcom/android/settings/R$string;->fingerprint_intro_error_unknown:I

    return p0
.end method

.method protected getCancelButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getChallenge()J
    .locals 2

    .line 262
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    .line 296
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_title:I

    return p0
.end method

.method protected getDescriptionResDisabledByAdmin()I
    .locals 0

    .line 215
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_message_unlock_disabled:I

    return p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    .line 236
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_fingerprint"

    return-object p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 210
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_title:I

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    .line 205
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_title_unlock_disabled:I

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    .line 200
    sget p0, Lcom/android/settings/R$layout;->fingerprint_enroll_introduction:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 194
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onCreate$0$FingerprintEnrollIntroduction(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 2

    .line 306
    invoke-virtual {p1}, Lcom/google/android/setupdesign/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 307
    sget p1, Lcom/android/settings/R$string;->help_url_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FingerprintIntro"

    if-nez p1, :cond_0

    const-string p0, "Null help intent."

    .line 310
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 316
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 88
    sget p1, Lcom/android/settings/R$id;->op_how_to_use_fingerprint_tips_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 91
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    sget p1, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_message:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_side_fingerprint_guide_dark.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_custom_fingerprint_guide_dark.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_side_fingerprint_guide_light.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_custom_fingerprint_guide.json"

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 112
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 113
    sget p1, Lcom/android/settings/R$id;->functional_terms:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 115
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$qUK7iYNkKyDQKBU_KuJvf09SqP8;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$qUK7iYNkKyDQKBU_KuJvf09SqP8;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    :cond_4
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/16 p1, 0x20

    .line 124
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 133
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_cancel:I

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$cKPkgzkUH_XMmiWPElPo2dP6-s8;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$cKPkgzkUH_XMmiWPElPo2dP6-s8;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v1, 0x7

    .line 137
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget v1, Lcom/android/settings/R$style;->OnePlusSecondaryButtonStyle:I

    .line 138
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 139
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wizard_next:I

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$wuUw2dRDPRCgC-2ynV6XkWZaCVE;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$FingerprintEnrollIntroduction$wuUw2dRDPRCgC-2ynV6XkWZaCVE;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    .line 145
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 p0, 0x5

    .line 146
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget p0, Lcom/android/settings/R$style;->OnePlusPrimaryButtonStyle:I

    .line 147
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 142
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 160
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 168
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 169
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 176
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 177
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mHowToUseTipsAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    .line 153
    sget v0, Lcom/android/settings/R$id;->suc_layout_title:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
