.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# instance fields
.field private mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Z)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    return-void
.end method

.method private proceedToEnrolling(Z)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 153
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 154
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 91
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 92
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 93
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 0

    .line 75
    sget p0, Lcom/android/settings/R$layout;->fingerprint_enroll_find_sensor:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "hw_auth_token"

    .line 163
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 164
    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p3, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 166
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    .line 179
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0068

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-lt p1, p2, :cond_2

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_0

    .line 175
    :cond_3
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 192
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 52
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->skip_label:I

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$DHTjUcEj_0xJoKUWFRXcWA9fscA;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$DHTjUcEj_0xJoKUWFRXcWA9fscA;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    const/4 v1, 0x7

    .line 56
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    sget v1, Lcom/android/settings/R$style;->OnePlusSecondaryButtonStyle:I

    .line 57
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 61
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 64
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 66
    sget p1, Lcom/android/settings/R$id;->fingerprint_sensor_location_animation:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 67
    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    .line 132
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x2

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 81
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 118
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 119
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 120
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
