.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    .line 167
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 169
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const-string v0, ":settings:password_quality"

    .line 170
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 215
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 2

    .line 71
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "op_legal_notices_type"

    const/16 v1, 0x8

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "key_from_settings"

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setFingerprintCount(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    .line 179
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 181
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 183
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v0, "fingerprint_enrolled_count"

    .line 184
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x20000

    const-string v2, "lockscreen.password_type"

    .line 99
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "show_options_button"

    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 115
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 82
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method protected initViews()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->initViews()V

    .line 127
    sget v0, Lcom/android/settings/R$id;->sud_layout_description:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 129
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSideFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 134
    :cond_0
    sget v1, Lcom/android/settings/R$string;->oneplus_how_to_use_fingerprint_summary_no_note:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 139
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_continue_setup:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getCancelButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 143
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_cancel_setup:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$onCreate$0$SetupFingerprintEnrollIntroduction(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 158
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->setFingerprintCount(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 162
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 208
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 211
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    const/16 p1, 0xb

    .line 197
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "wasLockScreenPresent"

    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 65
    :goto_0
    sget p1, Lcom/android/settings/R$id;->functional_terms:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 67
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->op_setupwizard_oxygen_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :cond_1
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$SetupFingerprintEnrollIntroduction$xs4t6BYGNOKxMXZZE2E8-lyO6og;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/-$$Lambda$SetupFingerprintEnrollIntroduction$xs4t6BYGNOKxMXZZE2E8-lyO6og;-><init>(Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string/jumbo v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
