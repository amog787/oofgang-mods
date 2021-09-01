.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# instance fields
.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method public static synthetic lambda$1ydREpEzxloopI4SIMM9xynQRio(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCancelButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ewQUr6y3DwDlrhcAfGX06MsIWCc(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$jMt6I49jNO37kzpftHnGbDtfakE(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private maxFacesEnrolled()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 153
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v2, p0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 165
    sget p0, Lcom/android/settings/R$string;->face_intro_error_max:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 168
    :cond_1
    sget p0, Lcom/android/settings/R$string;->face_intro_error_unknown:I

    return p0
.end method

.method protected getChallenge()J
    .locals 2

    .line 175
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    .line 196
    sget p0, Lcom/android/settings/R$string;->security_settings_face_preference_title:I

    return p0
.end method

.method protected getDescriptionResDisabledByAdmin()I
    .locals 0

    .line 125
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_message_unlock_disabled:I

    return p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    .line 146
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_face"

    return-object p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 120
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_title:I

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    .line 115
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_title_unlock_disabled:I

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    .line 110
    sget p0, Lcom/android/settings/R$layout;->face_enroll_introduction:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 104
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x80

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

.method public synthetic lambda$onCreate$0$FaceEnrollIntroduction(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_no_thanks:I

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$jMt6I49jNO37kzpftHnGbDtfakE;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$jMt6I49jNO37kzpftHnGbDtfakE;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v1, 0x7

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget v1, Lcom/android/settings/R$style;->OnePlusSecondaryButtonStyle:I

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 62
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_no_thanks:I

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v1, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$1ydREpEzxloopI4SIMM9xynQRio;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$1ydREpEzxloopI4SIMM9xynQRio;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v1, 0x2

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget v1, Lcom/android/settings/R$style;->OnePlusSecondaryButtonStyle:I

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 75
    :goto_0
    new-instance p1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {p1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_agree:I

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v0, 0x5

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget v0, Lcom/android/settings/R$style;->OnePlusPrimaryButtonStyle:I

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 79
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    new-instance v0, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ewQUr6y3DwDlrhcAfGX06MsIWCc;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$ewQUr6y3DwDlrhcAfGX06MsIWCc;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 81
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 87
    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_more:I

    new-instance v2, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$h1dvwhkhQ5mcuoE-tW7-5f7i8wM;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/-$$Lambda$FaceEnrollIntroduction$h1dvwhkhQ5mcuoE-tW7-5f7i8wM;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->requireScrollWithButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterButton;ILandroid/view/View$OnClickListener;)V

    .line 94
    :goto_1
    sget p1, Lcom/android/settings/R$id;->face_enroll_introduction_footer_part_2:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/settings/biometrics/face/FaceFeatureProvider;->isAttentionSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 97
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_footer_part_2:I

    goto :goto_2

    .line 98
    :cond_2
    sget p0, Lcom/android/settings/R$string;->security_settings_face_settings_footer_attention_not_supported:I

    .line 99
    :goto_2
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
