.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FingerprintEnrollSidecar.java"


# instance fields
.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)[B
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)Landroid/os/CancellationSignal;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$501(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentProgress(I)V

    return-void
.end method

.method static synthetic access$601(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$701(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 31
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf5

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    .line 38
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method protected startEnrollment()V
    .locals 4

    .line 43
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    .line 44
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 48
    :cond_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
