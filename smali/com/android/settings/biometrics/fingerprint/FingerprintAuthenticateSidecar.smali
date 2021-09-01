.class public Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintAuthenticateSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;,
        Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;
    }
.end annotation


# instance fields
.field private mAuthenticationError:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

.field private mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mCancellationSignal:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mListener:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$Listener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationResult:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;)Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar;->mAuthenticationError:Lcom/android/settings/biometrics/fingerprint/FingerprintAuthenticateSidecar$AuthenticationError;

    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4c5

    return p0
.end method

.method public setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    return-void
.end method
