.class public Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;
.super Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;
.source "FingerprintSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method static isFingerprintEnabled(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "device_policy"

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z
    .locals 1

    .line 53
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->isFingerprintEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintSuggestionActivity;->isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected initViews()V
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->initViews()V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getCancelButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 35
    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_cancel:I

    invoke-virtual {v0, p0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    return-void
.end method
