.class Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 51
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)Landroid/os/CancellationSignal;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 52
    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)I

    move-result v5

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v6

    const/4 v4, 0x0

    .line 51
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    return-void
.end method
