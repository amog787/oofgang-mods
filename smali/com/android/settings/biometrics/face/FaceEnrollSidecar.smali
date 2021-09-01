.class public Lcom/android/settings/biometrics/face/FaceEnrollSidecar;
.super Lcom/android/settings/biometrics/BiometricEnrollSidecar;
.source "FaceEnrollSidecar.java"


# instance fields
.field private final mDisabledFeatures:[I

.field private mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>([I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollSidecar$1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 39
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    return-void
.end method

.method static synthetic access$001(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;I)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentProgress(I)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$201(Lcom/android/settings/biometrics/face/FaceEnrollSidecar;ILjava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onEnrollmentError(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e5

    return p0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->onAttach(Landroid/app/Activity;)V

    .line 45
    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method public startEnrollment()V
    .locals 8

    .line 50
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->startEnrollment()V

    .line 51
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 55
    :cond_0
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mUserId:I

    iget-object v4, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mToken:[B

    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-object v6, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    iget-object v7, p0, Lcom/android/settings/biometrics/face/FaceEnrollSidecar;->mDisabledFeatures:[I

    invoke-virtual/range {v2 .. v7}, Landroid/hardware/face/FaceManager;->enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V

    return-void
.end method
