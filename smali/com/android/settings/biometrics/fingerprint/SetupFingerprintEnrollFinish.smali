.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFingerprintEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 38
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf8

    return p0
.end method

.method protected initViews()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews()V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 49
    sget v1, Lcom/android/settings/R$string;->next_label:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 51
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;->mBtnNext:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$color;->oneplus_setupwizard_accent_color:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method
